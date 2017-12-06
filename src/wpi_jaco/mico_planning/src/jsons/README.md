## The Request: Front-end UI ==> Back-end ROS
1. checkROSLive: Check if the backend ROS is fired up.
2. excuteTherbligs: Send a therbligs plan to backend for execution.
3. getPostion: Query the backend for current arm postion.
4. exit: Close the backend ROS process.

## The Reply: Front-end UI <== Back-end ROS
1. checkROSLiveReply: Replies true as well as the robot info.
2. executeTherbligsReply: Returns true if the therbligs plan is executed; Returns false as well as failure reason
if the therbligs plan is not executed.
3. getPositionReply: Returns the current end effector position XYZ and the orientation.
4. exitReply: Replies true to notify the ROS end is closed.
