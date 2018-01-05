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

# Uncomment to Test checkROSLive
# sendJson(s, {"Action":"CheckROSLive"})

# Uncomment to Test execute Therbligs 

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
                  "val":"-0.13944, -0.25935,0.69044",
                  "$$hashKey":"object:113"
               },
               {
                  "name":"Orientation",
                  "val":"0.33707,-0.93151, -0.11101, 0.07957"
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
                  "val":"-0.1544, -0.2035,0.65044",
                  "$$hashKey":"object:114"
               },
               {
                  "name":"Orientation",
                  "val":"0.33707,-0.93151, -0.11101, 0.07957"
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


# Uncomment to Test getPosition
# sendJson(s,{"Action":"GetPosition"})

# Uncomment to Test exit
# sendJson(s, {"Action":"Exit"})

time.sleep(2)

replyData = s.recv(256)
print replyData


s.close  
