#!/usr/bin/env python
## To use the python interface to move_group, import the moveit_commander
## module.  We also import rospy and some messages that we will use.
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import time
from sensor_msgs.msg import JointState
#from mico_gripperControl import MicoGripperControl

from std_msgs.msg import String

# include simulation here
import mico_simulator

class ActionHandler:

    ################
    # Initializes the MoveGroupCommander, PlannerID, and EndEffector
    def __init__(self, group_name, node_name ,planner_name, sim_flag):
		moveit_commander.roscpp_initialize(sys.argv)
  		rospy.init_node(node_name, anonymous=True)

  		## Instantiate a RobotCommander object.  This object is an interface to
  		## the robot as a whole.
  		self.robot = moveit_commander.RobotCommander()

  		## Instantiate a PlanningSceneInterface object.  This object is an interface
  		## to the world surrounding the robot.
  		self.scene = moveit_commander.PlanningSceneInterface()

  		## Instantiate a MoveGroupCommander object.  This object is an interface
  		## to one group of joints.  In this case the group is the joints in the left
  		## arm.  This interface can be used to plan and execute motions on the left
  		## arm.
  		self.group = moveit_commander.MoveGroupCommander(group_name)#default : "mico_arm"
		  #self.group.set_planner_id(planner_name)

		## We create this DisplayTrajectory publisher which is used below to publish
  		## trajectories for RVIZ to visualize.
  		self.display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)

		self.joints = self.current_joints()
		self.pose = self.current_pose()
		if (sim_flag):		
			self.simulator = mico_simulator.mico_simulator('mico_sim')
		else:
			self.simulator = None
		print "starting state... ",self.current_joints()
		#self.group.set_start_state([3.14, 3.14, 3.14, 3.14, 3.14, 3.14])


####################
# ARM STATE FUNCTIONS

    ################
    # Get the current arm roll, pitch, yaw 
    #
    # Return : Returns the current arm rpy
    def current_rpy(self):
        return self.group.get_current_rpy()

    ################
    # Get the current arm pose 
    #
    # Return : Returns the current arm pose
    def current_pose(self):
        return self.group.get_current_pose()

    ################
    # Get the current arm joint values
    #
    # Return : Returns the current joint values as an array
    def current_joints(self):
        return self.group.get_current_joint_values()

    ################
    # Get the current arm joint state
    #
    # Return : Returns the current joint state
    def current_jointState(self):
        js = JointState()
        js.name = ['mico_joint_1','mico_joint_2','mico_joint_3','mico_joint_4','mico_joint_5','mico_joint_6']
        js.position = self.current_joints() + self.current_rpy()
        return js
 
		################
    # Get the current planning frame
    #
    # Return : Returns the current planning frame
    def planning_frame(self):
			return self.group.get_planning_frame()


####################
# PLANNING AND MOVEMENT FUNCTIONS

    ################
    # Executes the plan of the real arm, does not allow for the plan to be stopped during execution
    #
    # Arguments : plan (plan pbject) = the plan to execute
    #
    # Return : True if the plan was executed
    def execute_plan(self, plan):
        return self.group.execute(plan)

    ################
    # Executes the plan of the real arm, allows for the plan to be stopped by stop()
    #
    # Arguments : plan (plan pbject) = the plan to execute
    #
    # Return : True if the plan was executed
    def async_execute_plan(self, plan):
        return self.group.execute(plan, False)

    ###############
    # Plan motion based on a set of end-effector positions
    #
    # Arguments: positions (list) = the end positions
    #
    # Return : Returns a the plan    
    def plan(self, positions):
        return self.group.plan(positions)

    ###############
    # Plan motion based on a goal pose location
    #
    # Arguments: coordinates of the goal pose
    #
    # Return : Returns a the plan
    def set_target_position(self, pose):
        self.group.set_pose_target(pose) 

    def set_target_joints(self, joints):
        self.group.set_joint_value_target(group_variable_values)

####################
# THERBLIGS

    ################
    # Reaching for an object with an empty hand
    # Preperation for grasp
    #
    # Arguments : arm (int) = id of the arm being used
    #             position (list) = goal position, either [xyz, xyzw] or JointState           
    # 
    # Return : True if the arm moved to the correct position
    def Transport_Empty(self, arm, position):
        success = False

        posList = []
        try:
            if isinstance(arm, int):
                #print "starting state... ",self.group.get_current_state()                
                #self.group.set_start_state()
                self.group.set_start_state_to_current_state()
                print "before",self.group.get_current_joint_values()
                print "target: ", position
                self.set_target_position(position)
                plan = self.group.plan()

                for i in plan.joint_trajectory.points:
                    posList.append(i.positions)
                #self.group.go(wait=True)
                self.execute_plan(plan)
                print "after",self.current_joints()
                print "after end: ", self.current_pose().pose
                success = True
                # for simulation
                if self.simulator != None:
                    for p in posList:
                        self.simulator.move_arm(list(p))
                ###
            else:
                print("USAGE ERROR : please specify which arm is being used (ex : mico => 4)")

        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to move arm")
            print(e)

        return success

    ################
    # Reaching for an object with an loaded hand
    # Preperation for grasp
    #
    # Arguments : arm (int) = id of the arm being used
    #             position (list) = goal position, either [xyz, xyzw] or JointState           
    # 
    # Return : True if the arm moved to the correct position
    def Transport_Loaded(self, arm, position):
        success = False

        posList = []
        try:
            if isinstance(arm, int):
                #print "starting state... ",self.group.get_current_state()                
                #self.group.set_start_state()
                self.group.set_start_state_to_current_state()
                print "before",self.group.get_current_joint_values()
                print "target: ", position
                self.set_target_position(position)
                plan = self.group.plan()

                for i in plan.joint_trajectory.points:
                    posList.append(i.positions)
                #print "Trajectory: ", posList
                #print "Trajectory:", plan.joint_trajectory.points
                #self.group.go(wait=True)
                self.execute_plan(plan)

                # for simulation
                if self.simulator != None:
                    for p in posList:
                        self.simulator.move_arm(list(p))
                ###
                print "after",self.current_joints()
                print "after end: ", self.current_pose().pose
                success = True
            else:
                print("USAGE ERROR : please specify which arm is being used (ex : mico => 4)")

        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to move arm")
            print(e)

        return success

    ################
    # Set the degree of the hand openness
    # Grasp or release and object
    #
    # Arguments : arm (int) = id of the arm being used
    #             degree (float) = goal openness of the hand           
    # 
    # Return : True if the hand is opened to the correct position
    def Set_Hand_Openness(self, degree):
        if degree < 0 or degree >1:
            return False
        # actual code to control the robot
        ret = True
        # for simulation
        if self.simulator != None:
            self.simulator.move_hand(degree)
        ###
        return ret

    ################
    # Save the current XYZ position and orientation of the end-effector
    #
    # Arguments : arm (int) = id of the arm being used    
    # 
    # Return : A geometry_msgs pose contains the [XYZ position, xyzw orientation]
    def Read_Position(self):
        try:
            return self.group.get_current_pose().pose
            #else:
                #print("USAGE ERROR : please specify which arm is being used (ex : mico => 4)")

        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to move arm")
            print(e)

