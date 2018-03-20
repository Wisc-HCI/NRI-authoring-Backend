function sysCall_init()
         
    j0=sim.getObjectHandle("MicoHand_fingers12_motor1")
    j1=sim.getObjectHandle("MicoHand_fingers12_motor2")
    cv=0.04
    
end

function sysCall_cleanup() 
 
end 

function sysCall_actuation() 
    close=sim.getIntegerSignal("hand2")
    if not close then
        close=0
    end
    if (close>0) then
        sim.setJointTargetVelocity(j0,-cv)
        sim.setJointTargetVelocity(j1,-cv)
    else
        sim.setJointTargetVelocity(j0,cv)
        sim.setJointTargetVelocity(j1,cv)
    end
end 


