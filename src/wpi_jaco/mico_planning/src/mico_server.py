#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################

from BaseHTTPServer import BaseHTTPRequestHandler, HTTPServer
import json
import subprocess
import sys
import log as LOG

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
        jsonData = json.loads(post_data)

        with open("plan.json", "w") as outfile:
            json.dump(jsonData, outfile)

        # execute python master script
        sim = False
        sim_flag = "sim" if sim else "nosim"
        #launcher the mico master for execution
        mico_process = subprocess.Popen('python mico_master.py plan.json {}'.format(sim_flag), shell=True)
        mico_process.wait()
        with open("reply.txt", "r") as reply:
            reply_text = reply.read()
        # reply to the front-end
        self._set_response()
        self.wfile.write(reply_text)

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
