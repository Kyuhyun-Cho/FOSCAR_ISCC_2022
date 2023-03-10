;; Auto-generated. Do not edit!


(when (boundp 'cam_lidar_calibration::RunOptimiseResult)
  (if (not (find-package "CAM_LIDAR_CALIBRATION"))
    (make-package "CAM_LIDAR_CALIBRATION"))
  (shadow 'RunOptimiseResult (find-package "CAM_LIDAR_CALIBRATION")))
(unless (find-package "CAM_LIDAR_CALIBRATION::RUNOPTIMISERESULT")
  (make-package "CAM_LIDAR_CALIBRATION::RUNOPTIMISERESULT"))

(in-package "ROS")
;;//! \htmlinclude RunOptimiseResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cam_lidar_calibration::RunOptimiseResult
  :super ros::object
  :slots (_transform ))

(defmethod cam_lidar_calibration::RunOptimiseResult
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _transform __transform)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(setf (get cam_lidar_calibration::RunOptimiseResult :md5sum-) "c2d1de03cf5b052350d875b7cfbc84a5")
(setf (get cam_lidar_calibration::RunOptimiseResult :datatype-) "cam_lidar_calibration/RunOptimiseResult")
(setf (get cam_lidar_calibration::RunOptimiseResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
geometry_msgs/Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :cam_lidar_calibration/RunOptimiseResult "c2d1de03cf5b052350d875b7cfbc84a5")


