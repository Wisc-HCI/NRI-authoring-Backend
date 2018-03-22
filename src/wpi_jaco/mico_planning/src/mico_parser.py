#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# The class is used by the mico master parse the json-format message sent from the front-end or mico_client.
# The exact json format is defined by the front-end.
##################################

import json

class ActionParser:

	# Constructor of the ActionParser
    def __init__(self, jsonData):
        self.data = jsonData
        self.type = self.data['Action']
        if self.type == 'ExecutePlan':
        	self.content = self.data['content']

    # Returns the type of the JSON request
    def getType(self):
    	return self.type

    # Returns the content of the Execute plan
    def getTasks(self):
        return self.content
        
    # Returns the therbligs list for the ith task
    def getTherbligs(self, i):
    	assert(self.type == 'ExecutePlan')
        return self.content[i]['therbligList']
        
    # Returns the therbligs name
    def getTherbligName(self, therblig):
    	assert(self.type == 'ExecutePlan')
        return therblig['name']
    
    # Returns the object position string
    def getXYZPosition(self, therblig):
    	assert(self.type == 'ExecutePlan')
        if not (self.getTherbligName(therblig) == "Transport Empty" or self.getTherbligName(therblig) == "Transport Loaded"):
            print "USAGE ERROR: Expect a Transport Therblig\n"
            return
        return therblig['parameters'][0]['val']
        
    # Returns the object orientation string
    def getOrientation(self, therblig):
    	assert(self.type == 'ExecutePlan')
        if not (self.getTherbligName(therblig) == "Transport Empty" or self.getTherbligName(therblig) == "Transport Loaded"):
            print "USAGE ERROR: Expect a Transport Therblig\n"
            return
        return therblig['parameters'][1]['val']
        
    # Return the grasp effort of the end-effector
    def getGraspEffort(self, therblig):
    	assert(self.type == 'ExecutePlan')
        if(self.getTherbligName(therblig) != "Grasp"):
            print "USAGE ERROR: Expect a Grasp Therblig\n"
            return
        return therblig['parameters'][0]['val']

    # Returns the object name
    def getObjectName(self, therblig):
    	assert(self.type == 'ExecutePlan')
    	return therblig['thing']['name']
        
