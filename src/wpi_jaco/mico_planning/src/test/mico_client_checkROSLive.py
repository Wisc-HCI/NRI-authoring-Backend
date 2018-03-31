#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# The scripts creates a local socket get connected to the mico master, sends over a mocked therbligs json
# for check ROS alive.This file is only used for testing purpose on the backend.
##################################
import socket
import sys
import time
import json

def sendJson(socket, data):
    try:
        serialized = json.dumps(data)
    except (TypeError, ValueError), e:
        raise Exception('You can only send JSON-serializable data')
    # send the length of the serialized data first
    socket.send('%d\n' % len(serialized))
    # send the serialized data
    socket.sendall(serialized)

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_address = (socket.gethostname(), 9999)
s.connect(server_address)
print 'connecting up on %s port %s' % server_address
time.sleep(2)

sendJson(s, {"Action":"CheckROSLive"})

time.sleep(2)

replyData = s.recv(256)
print replyData


s.close  
