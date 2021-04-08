#!/usr/bin/env python
import rospy # Python library for ROS
from sensor_msgs.msg import LaserScan # LaserScan type message is defined in sensor_msgs
from geometry_msgs.msg import Twist #

def callback(dt):
    thr1 = 0.5 # Laser scan range threshold
    thr2 = 0.5
    if dt.ranges[0]>thr1 and dt.ranges[15]>thr2 and dt.ranges[345]>thr2: #si il n'y a rien devant
	print 'Vitesse : 0.3m/s'
        move.linear.x = 0.3 # go forward (linear velocity)
        move.angular.z = 0.0 # do not rotate (angular velocity)
    else: #si il y a un obstacle devant
	print 'Obstacle detecte !!!'
	print 'Vitesse : 0m/s'
	print 'Rotation...'	
        move.linear.x = 0 # stop (almost)
	if dt.ranges[0]<thr1 or dt.ranges[90]<thr2:
	    move.angular.z = -0.5 #on tourne a gauche
	elif dt.ranges[0]<thr1 or dt.ranges[270]<thr2:
	    move.angular.z = 0.5 #on tourne a droite
        if dt.ranges[0]>thr1 and dt.ranges[15]>thr2 and dt.ranges[345]>thr2:#il est dans la bonne dir
	    print 'Vitesse : 0.3m/s'
            move.linear.x = 0.3
            move.angular.z = 0.0
    pub.publish(move) # publish the move object


move = Twist() # Creates a Twist message type object
rospy.init_node('obstacle_avoidance_node') # Initializes a node
pub = rospy.Publisher("tb3_0/cmd_vel", Twist, queue_size=10) 
sub = rospy.Subscriber("tb3_0/scan", LaserScan, callback)
rospy.spin() # Loops infinitely until someone stops the program execution


