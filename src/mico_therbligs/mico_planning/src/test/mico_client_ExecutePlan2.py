#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# The scripts creates a local socket get connected to the mico master, sends over a mocked therbligs json
# for execution.This file is only used for testing purpose on the backend.
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

sendJson(s,{
	"Action":"ExecutePlan",

	"content":[{
	"name": "Task1",
	"type": "task",
	"repeat": 0,
	
    "therbligList":[
         {
            "name":"Transport Empty",
            "type":"physical",
            "parameters":[
               {
                  "name":"Position X",
                  "type":"position",
                  "val":"-0.269933434482, -0.0314958877548, 0.0771934339673",
                  "$$hashKey":"object:113"
               },
               {
                  "name":"Orientation",
                  "val":"-0.254251246904,0.486573826796, 0.631751635222, 0.54725870109"
               },
               {
                  "name":"Angle",
                  "val":""
               },
               {
                  "name":"Arm",
                  "val":""
               }
            ],
            "$$hashKey":"object:185"
         },
         {
            "name":"Grasp",
            "type":"physical",
            "parameters":[
               {
                  "name":"Effort",
                  "val":"50"
               },
               {
                  "name":"Arm",
                  "val":""
               }
            ],
            "thing":{
               "name":"A",
               "parameters":[
                  {
                     "name":"Thing Position (X, Y, Z)",
                     "val":""
                  }
               ],
               "type":"thing",
               "$$hashKey":"object:96"
            },
            "$$hashKey":"object:244"
         },
         {
            "name":"Transport Loaded",
            "type":"physical",
            "parameters":[
               {
                  "name":"Position Y",
                  "type":"position",
                  "val":"0.329154066699, 0.296416884308, 0.180804791474",
                  "$$hashKey":"object:114"
               },
               {
                  "name":"Orientation",
                  "val":"-0.565298852724, 0.0472695498383, 0.764927522345, 0.305104379394"
               },
               {
                  "name":"Angle",
                  "val":""
               },
               {
                  "name":"Arm",
                  "val":""
               }
            ],
            "thing":{
               "name":"A",
               "parameters":[
                  {
                     "name":"Thing Position (X, Y, Z)",
                     "val":""
                  }
               ],
               "type":"thing",
               "$$hashKey":"object:96"
            },
            "$$hashKey":"object:300"
         },
         {
            "name":"Release Load",
            "type":"physical",
            "parameters":[
               {
                  "name":"Arm",
                  "val":""
               }
            ],
            "thing":{
               "name":"A",
               "parameters":[
                  {
                     "name":"Thing Position (X, Y, Z)",
                     "val":""
                  }
               ],
               "type":"thing",
               "$$hashKey":"object:96"
            },
            "$$hashKey":"object:356"
         }
      ],
      "$$hashKey":"object:161"
   }
]})


time.sleep(2)

replyData = s.recv(256)
print replyData


s.close  
