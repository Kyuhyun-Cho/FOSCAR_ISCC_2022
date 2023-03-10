import cv2
import rospy
import numpy as np
from darknet_ros_msgs.msg import BoundingBox, BoundingBoxes
from vision_distance.msg import Delivery, DeliveryArray
from lidar_team_erp42.msg import Delivery
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
from delivery_mission.msg import drive_values
import time
from datetime import datetime

now = datetime.now()

bridge = CvBridge()
usleep = lambda x: time.sleep(x/1000000.0)

rospy.init_node("go_straight")
drive_values_pub = rospy.Publisher('control_value', drive_values, queue_size=1)

car_run_speed = 6 # 4
max_speed = 8 # 5

a_max_index = 1
b_max_index = -1

b_cnt = [-1,-1,-1]
a_flag = [False, True, False]
b_flag = [False, False, False]
mission_flag = 1
delivery_obs_calc = False
delivery_obs_stop = False

# min a dist
min_dist = 99999999

def vision_callback(msg):
	global flag
	global mission_flag
	global dist_x
	global dist_y
	global b_cnt, b_max_index, b_flag
	
	# 비전에서 받아오는 정보
	deliverySign = msg.visions
	sorted_data_list = sorted(deliverySign, key=lambda x:(x.dist_y, x.dist_x))

	#print(len(data_list))
	if len(sorted_data_list):
		print("* CLOSEST B FLAG : ", sorted_data_list[0].flag)
	else:
		print("* Not Detected ")
	
	for i in range(1, len(deliverySign)):
		if deliverySign[i].dist_y < sorted_data_list[0].dist_y:
			sorted_data_list[0] = deliverySign[i] 
	
	
	if sorted_data_list[0].dist_y > 450 and sorted_data_list[0].dist_y < 850:
		# B1
		if (sorted_data_list[0].flag == 1):
			b_cnt[0] += 1
		# B2
		if (sorted_data_list[0].flag == 2):
			b_cnt[1] += 1
		# B3
		if (sorted_data_list[0].flag == 3):
			b_cnt[2] += 1
		# if sorted_data_list[0].dist_y < min_b_dist:
		# 	min_b_dist = sorted_data_list[0].dist_y
		# 	print("min_b_dist:::::::::", min_b_dist)
		print(b_cnt)
	# else:
	# 	min_dist = 99999999

def delivery_callback(msg):
	global x
	global y
	global angle
	global delivery_obs_calc, delivery_obs_stop

	# 라이다에서 받아오는 정보
	delivery_x = msg.x
	delivery_y = msg.y
	delivery_ang = msg.angle

	delivery_info = []
	delivery_info.append([delivery_x, delivery_y, delivery_ang])
	print(delivery_info)

	for i in delivery_info:
		if 1 < delivery_x < 4:
			print("DELIVERY CALC !!!!")
			delivery_obs_calc = True
		
		if delivery_x < 0.1 or delivery_ang > 100:
			print("DELIVERY STOP !!!!")
			delivery_obs_stop = True

def image_callback(img_data):
	global bridge
	global img
	img = bridge.imgmsg_to_cv2(img_data, "bgr8")


def auto_drive():
	global car_run_speed
	global max_speed
	global mission_flag
	global min_b_dist
	global b_cnt, b_flag
	global b_max_index
	drive_value = drive_values()

	drive_value.throttle = int(car_run_speed)
	drive_value.steering = 0.0
	drive_values_pub.publish(drive_value)
	
	print("mission_flag:::::: ", mission_flag)
	
	if mission_flag == 1 and delivery_obs_calc :
		# calc flag
		if ((b_cnt[0] + b_cnt[1] + b_cnt[2]) != -3):
			b_max_index = np.argmax(b_cnt) 
			print("b_max_index::::::::", b_max_index)

		mission_flag = 2
		# drive_values_pub.publish(drive_value)
	
	elif mission_flag == 2 and delivery_obs_stop:
	    if a_flag[b_max_index] == True:
			for i in range(0, 200):
				print("!!!!!!!!!mission2!!!!!!!!")
				usleep(10000)
				drive_value.throttle = int(car_run_speed)
				drive_value.steering = 0
				drive_values_pub.publish(drive_value)
			mission_flag = 3
	    elif a_flag[b_max_index] != True:
			mission_flag = 1
			print("Not Trueeeeeeeeeeee", min_b_dist)
		if min_b_dist > 850 :
			print("********************")
			min_b_dist = 99999999
			b_cnt = [0,0,0]

	elif mission_flag == 3:
		for i in range (0, 200):
			print("!!!!!!!!!mission3!!!!!!")
            usleep(10000)
			drive_value.throttle = 0 #int(car_run_speed)
			drive_value.steering = 0
			drive_values_pub.publish(drive_value)
		mission_flag = 4
	elif mission_flag == 4:
		drive_value.throttle = int(car_run_speed)
		drive_value.steering = 0
		drive_values_pub.publish(drive_value)
	#drive_value.throttle = int(car_run_speed)
	#drive_values_pub.publish(drive_value)

    #drive_values_pub.publish(drive_value)
    #print("steer : ", drive_value.steering)
    #print("throttle : ", drive_value.throttle)



if __name__ == "__main__":
    image_sub = rospy.Subscriber("/usb_cam/image_raw/", Image, image_callback)
    delivery_sub = rospy.Subscriber("/delivery/", DeliveryArray, vision_callback) 
	# 라이다에서 정보 받아오기
    lidar_sub = rospy.Subscriber("//image_raw/", Delivery, delivery_callback)
    # out = cv2.VideoWriter('/home/foscar/ISCC_2021/src/vision_distance/src/9-16/origin_{}-{}-{}-{}-{}.avi'.format(now.year,now.month, now.day, now.hour, now.minute), cv2.VideoWriter_fourcc(*'MJPG'),30,(640,480))

    # while not rospy.is_shutdown():
	# try:
	# 	out.write(img)
	# except:
	# 	pass
    
    auto_drive()
    rospy.sleep(0.05)