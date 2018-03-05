local socket = require("socket")
-- begin
local udp = socket.udp()

udp:setsockname('*', 8080)
 
local world = {} -- the empty world-state
 
-- Get the jointhandles
jointHandles={-1,-1,-1,-1,-1,-1}
for i=1,6,1 do
	jointHandles[i]=simGetObjectHandle('Mico_joint'..i)
end
-- Set-up some parameters for the mico configuration
vel=35
accel=10
jerk=5
currentVel={0,0,0,0,0,0}
currentAccel={0,0,0,0,0,0}
maxVel={vel*math.pi/180,vel*math.pi/180,vel*math.pi/180,vel*math.pi/180,vel*math.pi/180,vel*math.pi/180}
maxAccel={accel*math.pi/180,accel*math.pi/180,accel*math.pi/180,accel*math.pi/180,accel*math.pi/180,accel*math.pi/180}
maxJerk={jerk*math.pi/180,jerk*math.pi/180,jerk*math.pi/180,jerk*math.pi/180,jerk*math.pi/180,jerk*math.pi/180}
targetVel={0,0,0,0,0,0}

local data, msg_or_ip, port_or_nil
local entity, cmd, parms
local running = true
 
-- the beginning of the loop proper...
print "Beginning server loop."
while running do
	data, msg_or_ip, port_or_nil = udp:receivefrom()
	if data then
		inputs = {}
		for i in data:gmatch("%S+") do
				table.insert(inputs, i)
		end
		cmd = inputs[1]
		print(cmd)
		if cmd == 'move' then
			print("Received cmd: ", cmd, "with params: ", inputs[2], inputs[3], inputs[4], inputs[5], inputs[6], inputs[7])
			targetPos = {}
			for i=2,7,1 do
				table.insert(targetPos,tonumber(inputs[i])*math.pi/180)
			end
			print(targetPos[1],targetPos[2],targetPos[3],targetPos[4],targetPos[5],targetPos[6]);
            simRMLMoveToJointPositions(jointHandles,-1,currentVel,currentAccel,maxVel,maxAccel,maxJerk,targetPos,targetVel,{1,0,0,-1,-1,-1})
		elseif cmd == 'quit' then
			print("quitting the simulation")
			running = false;
			targetPos = {math.pi,math.pi,math.pi,math.pi,math.pi,math.pi}
			simRMLMoveToJointPositions(jointHandles,-1,currentVel,currentAccel,maxVel,maxAccel,maxJerk,targetPos,targetVel,{1,0,0,-1,-1,-1})
		elseif cmd == 'home' then
			print("Mico returning home")
			targetPos = {math.pi,math.pi,math.pi,math.pi,math.pi,math.pi}
			simRMLMoveToJointPositions(jointHandles,-1,currentVel,currentAccel,maxVel,maxAccel,maxJerk,targetPos,targetVel,{1,0,0,-1,-1,-1})
		elseif cmd == 'getpos' then
			hand = simGetObjectHandle("MicoHand")
			table_pos = simGetObjectPosition(hand, -1)
			print("Printing the end-effector position")
			print(table_pos[1], table_pos[2], table_pos[3])
		elseif cmd == 'close' then
			h0=simGetObjectHandle("MicoHand_fingers12_motor1")
    		h1=simGetObjectHandle("MicoHand_fingers12_motor2")
			closingVel=-0.04
			simSetJointTargetVelocity(h0,-closingVel)
        	simSetJointTargetVelocity(h1,-closingVel)
		else
			print("unrecognised command:", cmd)
			simRMLMoveToJointPositions(jointHandles,-1,currentVel,currentAccel,maxVel,maxAccel,maxJerk,targetPos,targetVel,{1,0,0,-1,-1,-1})
		end
	elseif msg_or_ip ~= 'timeout' then
		error("Unknown network error: "..tostring(msg))
	end
	simSwitchThread()
 
	socket.sleep(0.01)
end
--end

