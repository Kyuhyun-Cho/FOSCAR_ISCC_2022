;; Auto-generated. Do not edit!


(when (boundp 'cam_lidar_calibration::RunOptimiseFeedback)
  (if (not (find-package "CAM_LIDAR_CALIBRATION"))
    (make-package "CAM_LIDAR_CALIBRATION"))
  (shadow 'RunOptimiseFeedback (find-package "CAM_LIDAR_CALIBRATION")))
(unless (find-package "CAM_LIDAR_CALIBRATION::RUNOPTIMISEFEEDBACK")
  (make-package "CAM_LIDAR_CALIBRATION::RUNOPTIMISEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude RunOptimiseFeedback.msg.html


(defclass cam_lidar_calibration::RunOptimiseFeedback
  :super ros::object
  :slots ())

(defmethod cam_lidar_calibration::RunOptimiseFeedback
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get cam_lidar_calibration::RunOptimiseFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cam_lidar_calibration::RunOptimiseFeedback :datatype-) "cam_lidar_calibration/RunOptimiseFeedback")
(setf (get cam_lidar_calibration::RunOptimiseFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback


")



(provide :cam_lidar_calibration/RunOptimiseFeedback "d41d8cd98f00b204e9800998ecf8427e")


