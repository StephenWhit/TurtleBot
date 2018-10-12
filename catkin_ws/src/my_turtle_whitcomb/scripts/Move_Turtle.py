#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist

def Move_Turtle():
    pub = rospy.Publisher('/cmd_vel_mux/input/teleop',Twist, queue_size=10)
    rospy.init_node('Move_Turtle', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    global msg
    msg = Twist()
    msg.linear.x = .2
    msg.linear.y = 0
    msg.linear.z = 0
    msg.angular.x = 0
    msg.angular.y = 0
    msg.angular.z = 0.5
    while not rospy.is_shutdown():
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        Move_Turtle()
    except rospy.ROSInterruptException:
        pass
