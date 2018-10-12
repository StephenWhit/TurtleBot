STEPHEN WHITCOMB
September 13, 2018

Assignment 1 Submission
I am including in the .zip file my workspace (catkin_ws) containing my_turtle_whitcomb package 
and the scripts located in the /scripts directory as well as the tutorial file containing the 
.world, .inc, .yaml, and .png files taken from the turtlebot_stage tutorial. 

The steps to compile and run my code are as follows:
1) run "$ catkin_make install" inside of the catkin_ws workspace
2) run "$ source catkin_ws/devel/setup.bash" from anywhere
3) run "$ roscore"
4) in a new terminal run "$ roslaunch turtlebot_stage turtlebot_in_stage.launch" 
4.5) wait for Rviz and STAGE to open and run
5) in another terminal run "$rosrun my_turtle_whitcomb Move_Turtle.py"
5.5) the turtlebot should begin moving at this stage
6) in yet another terminal run "$ rosrun my_turtle_whitcomb Listen_Turtle.py"
7) That's it! the turtle bot should be moving in a circle and Listen_Turtle 
should publish as it goes along while calculating the inverse kinematics as 
a custom "Velocity.msg" type message

Notes: I added an angualr velocity of .5 to make things a bit more interesting 
and could not implement the bumper detection...
