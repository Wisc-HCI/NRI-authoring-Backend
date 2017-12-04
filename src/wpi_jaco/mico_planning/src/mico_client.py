#!/usr/bin/python           # This is client.py file

import socket               # Import socket module
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
sendJson(s,[{
	"name": "Task1",
	"type": "task",
	"repeat": 0,
	"therbligList": [{
		"name": "Transport Empty",
		"type": "physical",
		"parameters": [{
			"name": "Position X",
			"type": "position",
			"val": "-0.13944, -0.25935,0.69044",
			"$$hashKey": "object:111"
		}, {
			"name": "Orientation",
			"val": "0.33707,-0.93151, -0.11101, 0.07957",
			"$$hashKey": "object:230"
		}, {
			"name": "Angle",
			"val": "",
			"$$hashKey": "object:231"
		}, {
			"name": "Arm",
			"val": "",
			"$$hashKey": "object:232"
		}],
		"$$hashKey": "object:154"
	}, {
		"name": "Transport Empty",
		"type": "physical",
		"parameters": [{
			"name": "Position X",
			"type": "position",
			"val": "-0.1544, -0.2035,0.65044",
			"$$hashKey": "object:111"
		}, {
			"name": "Orientation",
			"val": "0.33707,-0.93151, -0.11101, 0.07957",
			"$$hashKey": "object:230"
		}, {
			"name": "Angle",
			"val": "",
			"$$hashKey": "object:231"
		}, {
			"name": "Arm",
			"val": "",
			"$$hashKey": "object:232"
		}],
		"$$hashKey": "object:154"

	}]
}])
#{'name': 'Task1'})
'''
print 'connecting up on %s port %s' % server_address
time.sleep(2)
message = 'move 0.07957 0.33707 -0.93151 -0.11101 -0.13944 -0.25935 0.69044'
print >>sys.stderr, 'sending '%s'' % message
s.sendall(message)
data = s.recv(16)
print data

time.sleep(2)
message1 = 'position'
print >>sys.stderr, 'sending '%s'' % message1
s.sendall(message1)
data1 = s.recv(256)
print data1
'''

s.close  
