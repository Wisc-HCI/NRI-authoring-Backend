#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################################################################
# The mico_server_handler is used for routing and handling different HTTP requests.
# The routing path includes: CheckROSLive, LaunchROS, ExecutePlan, Exit
##################################################################################

from BaseHTTPServer import BaseHTTPRequestHandler, HTTPServer
import json
from subprocess import Popen, PIPE
import sys
import log as LOG

# server handler extends the BaseHTTPRequestHandler
class mico_server_handler(BaseHTTPRequestHandler):
    def _set_response(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()

    def do_GET(self):
        print "GET: path:", str(self.path), "headers:", str(self.headers)
        self._set_response()
        self.wfile.write("GET request for {}".format(self.path).encode('utf-8'))

    def do_POST(self):
        content_length = int(self.headers['Content-Length']) # <--- Gets the size of data
        post_data = self.rfile.read(content_length) # <--- Gets the data itself
        print "POST: path", str(self.path), "header:", str(self.headers)

        # handle CheckROSLive request
        if self.path == '/CheckROSLive':
            print ("Routing to: CheckROSLive")
            check_ROS_Process = Popen(['rostopic', 'list'], stdout=PIPE, stderr=PIPE)
            stdout, stderr = check_ROS_Process.communicate()
            if len(stdout) == 0:
                #ROS is not alive
                reply_text = self.create_reply('CheckROSLive', False)
            else:
                reply_text = self.create_reply('CheckROSLive', True)

        # handle LaunchROS request
        elif self.path == '/LaunchROS':
            print ("Routing to: launchROS")
            launch_ROS_Process = Popen(['./launch_with_robot.sh'],stdout=PIPE, stderr=PIPE)
            launch_ROS_Process.wait()
            reply_text = self.create_reply('LaunchROS', True)

        # handle ExecutePlan request
        elif self.path == '/ExecutePlan':
            print ("Routing to: ExecutePlan")
            sim = False
            sim_flag = "sim" if sim else "nosim"
            #launcher the mico master for execution
            execute_process = Popen('python mico_master.py plan.json {}'.format(sim_flag), shell=True)
            execute_process.wait()

            jsonData = json.loads(post_data)
            with open("plan.json", "w") as outfile:
                json.dump(jsonData, outfile)

            try:
                with open("reply.txt", "r") as reply:
                    reply_text = reply.read()
            except IOError as err:
			    print "IO Error"

        # handle Exit request
        elif self.path == '/Exit':
            print ("Routing to: Exit")
            Exit_ROS_Process = Popen(['rosnode', 'kill', '-a'], stdout=PIPE, stderr=PIPE)
            Exit_ROS_Process.wait()
            reply_text = self.create_reply('Exit', True)

        else:
            print ("Unknown routing path.")
		    # reply to the front-end
        self._set_response()
        self.wfile.write(reply_text)

    # create reply text for the incomming requests
    def create_reply(self, actionType, success):
        # send the reply string
        success_flag = "success" if success else "failed"
        reply_str = "Action: {}; Status: {}".format(actionType, success_flag)
        return reply_str

def main(port=9999, sim_flag=False):
    address = ("", port)
    httpd = HTTPServer(address, mico_server_handler)
    LOG.INFO("Starting python HTTP server at port {}".format(port))
    # start the HTTP server
    httpd.serve_forever()

###
# Main method
###
if __name__ == '__main__':
    if len(sys.argv) != 2:
        LOG.ERROR("Usage: python mico_server portnumber")
        exit(1)
    portnum = int(sys.argv[1])
    main(portnum)
