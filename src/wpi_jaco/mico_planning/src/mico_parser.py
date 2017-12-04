#!/usr/bin/python
import json


class ActionParser:

    def __init__(self, jsonData):
        self.data = jsonData
        self.tasks = len(jsonData)
        
    def getTasks(self):
        return self.data
        
    def getTherbligs(self, i):
        return self.data[i]['therbligList']
        
    def getTherbligName(self, therblig):
        return therblig['name']
    
    def getXYZPosition(self, therblig):
        if not (self.getTherbligName(therblig) == "Transport Empty" or self.getTherbligName(therblig) == "Transport Loaded"):
            print "USAGE ERROR: Expect a Transport Empty Therblig"
            return
        return therblig['parameters'][0]['val']
        
    def getOrientation(self, therblig):
        if not (self.getTherbligName(therblig) == "Transport Empty" or self.getTherbligName(therblig) == "Transport Loaded"):
            print "USAGE ERROR: Expect a Transport Empty Therblig"
            return
        return therblig['parameters'][1]['val']
        
    def getGraspEffort(self, therblig):
        if(self.getTherbligName(therblig) != "Grasp"):
            print "USAGE ERROR: Expect a Grasp Therblig"
            return
        return therblig['parameters'][0]['val']
        
