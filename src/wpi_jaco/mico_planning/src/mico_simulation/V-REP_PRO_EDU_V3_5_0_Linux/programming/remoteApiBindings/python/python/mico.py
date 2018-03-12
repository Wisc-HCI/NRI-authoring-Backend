#!/usr/bin/env python
# Make sure to have the server side running in V-REP: 
# in a child script of a V-REP scene, add following command
# to be executed just once, at simulation start:
#
# simRemoteApi.start(19999)
#
# then start simulation, and run this program.
#
# IMPORTANT: for each successful call to simxStart, there
# should be a corresponding call to simxFinish at the end!

try:
    import vrep
except:
    print ('--------------------------------------------------------------')
    print ('"vrep.py" could not be imported. This means very probably that')
    print ('either "vrep.py" or the remoteApi library could not be found.')
    print ('Make sure both are in the same folder as this file,')
    print ('or appropriately adjust the file "vrep.py"')
    print ('--------------------------------------------------------------')
    print ('')

import time

print ('Program started')
vrep.simxFinish(-1) # just in case, close all opened connections
clientID=vrep.simxStart('127.0.0.1',19999,True,True,5000,5) # Connect to V-REP
if clientID!=-1:
    print ('Connected to remote API server')

    # Start the simulation:
    vrep.simxStartSimulation(clientID,vrep.simx_opmode_oneshot_wait)

    # Now try to retrieve data in a blocking fashion (i.e. a service call):
    res,objs=vrep.simxGetObjects(clientID,vrep.sim_handle_all,vrep.simx_opmode_blocking)
    if res==vrep.simx_return_ok:
        print ('Number of objects in the scene: ',len(objs))
    else:
        print ('Remote API function call returned with error code: ',res)

    time.sleep(2)
    res1,j1 = vrep.simxGetObjectHandle(clientID,'Mico_joint1#', vrep.simx_opmode_oneshot_wait)
    res2,j2 = vrep.simxGetObjectHandle(clientID,'Mico_joint2#', vrep.simx_opmode_oneshot_wait)
    res3,j3 = vrep.simxGetObjectHandle(clientID,'Mico_joint3#', vrep.simx_opmode_oneshot_wait)
    res4,j4 = vrep.simxGetObjectHandle(clientID,'Mico_joint4#', vrep.simx_opmode_oneshot_wait)
    res5,j5 = vrep.simxGetObjectHandle(clientID,'Mico_joint5#', vrep.simx_opmode_oneshot_wait)
    res6,j6 = vrep.simxGetObjectHandle(clientID,'Mico_joint6#', vrep.simx_opmode_oneshot_wait)
    if res==-1:
        print "failed"
    errcode = vrep.simxSetJointTargetVelocity(clientID,j3,0.2, vrep.simx_opmode_oneshot_wait)
    ress = vrep.simxSetJointTargetPosition(clientID, j3, 2.4, vrep.simx_opmode_oneshot_wait)
    ress = vrep.simxSetJointTargetPosition(clientID, j4, 1.9, vrep.simx_opmode_oneshot_wait)
    if ress==vrep.simx_return_ok:
        print ('move ok')
        #print (pos)
    else:
        print ('move no ok')
else:
    print ('Failed connecting to remote API server')
print ('Program ended')
