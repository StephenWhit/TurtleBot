#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
from my_turtle_whitcomb.msg import Velocity
import numpy as np

x= 0
y= 0
theta= 0
r= 5
b = 50
Vel_msg = Velocity()
pub = rospy.Publisher('/DIFFERENTIAL_INVERSE_KINEMATICS_OUTPUT', Velocity, queue_size = 10)

def callback(data):
    x= data.linear.x
    y= data.linear.y
    theta = data.angular.z
    
    mat1 = np.matrix(((1/r, 0, b/r),(1/r, 0, -b/r)))
    mat2 = ((x, y, theta))
    print("here is the mat1 and mat 2")
    print(mat1)
    print(mat2)
    print(np.dot(mat1, mat2))
    Vel_msg.x = np.dot(mat1, mat2)
    Vel_msg.y = np.dot(mat1, mat2)
    rospy.loginfo(Vel_msg)
    pub.publish(Vel_msg)
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.linear.x)
    
def Listen_Turtle():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    global msg
    msg = Twist()
    rospy.init_node('Listen_Turtle', anonymous=True)

    rospy.Subscriber("/cmd_vel_mux/input/teleop", Twist, callback)
#    pub = rospy.Publisher('/DIFFERENTIAL_INVERSE_KINEMATICS_OUTPUT', Velocity, queue_size = 10)
#    Vel_msg = Velocity()
    #r = 5
    #b = 50
    '''mat1 = np.matrix(((1/r, 0, b/r),(1/r, 0, -b/r)))
    mat2 = ((x, y, theta))
    print("here is the mat1 and mat 2")
    print(mat1)
    print(mat2)
    print(np.dot(mat1, mat2))
    Vel_msg.x = np.dot(mat1, mat2)[0]
    Vel_msg.y = np.dot(mat1, mat2)[1]
	
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        mat1 = np.matrix(((1/r, 0, b/r),(1/r, 0, -b/r)))
	mat2 = ((x, y, theta))
	print("here is the mat1 and mat 2")
	print(mat1)
	print(mat2)
	print(np.dot(mat1, mat2))
	Vel_msg.x = np.dot(mat1, mat2)
	Vel_msg.y = np.dot(mat1, mat2)
	rospy.loginfo(Vel_msg)
        pub.publish(Vel_msg)
        rate.sleep()'''

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    Listen_Turtle()
