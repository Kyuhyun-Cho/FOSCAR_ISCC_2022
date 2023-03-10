;; Auto-generated. Do not edit!


(when (boundp 'delivery_mission::drive_values)
  (if (not (find-package "DELIVERY_MISSION"))
    (make-package "DELIVERY_MISSION"))
  (shadow 'drive_values (find-package "DELIVERY_MISSION")))
(unless (find-package "DELIVERY_MISSION::DRIVE_VALUES")
  (make-package "DELIVERY_MISSION::DRIVE_VALUES"))

(in-package "ROS")
;;//! \htmlinclude drive_values.msg.html


(defclass delivery_mission::drive_values
  :super ros::object
  :slots (_throttle _steering ))

(defmethod delivery_mission::drive_values
  (:init
   (&key
    ((:throttle __throttle) 0)
    ((:steering __steering) 0.0)
    )
   (send-super :init)
   (setq _throttle (round __throttle))
   (setq _steering (float __steering))
   self)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:serialization-length
   ()
   (+
    ;; int16 _throttle
    2
    ;; float64 _steering
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _throttle
       (write-word _throttle s)
     ;; float64 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _throttle
     (setq _throttle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _steering
     (setq _steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get delivery_mission::drive_values :md5sum-) "ef2152ed667962c416322fe394052479")
(setf (get delivery_mission::drive_values :datatype-) "delivery_mission/drive_values")
(setf (get delivery_mission::drive_values :definition-)
      "int16 throttle
float64 steering
")



(provide :delivery_mission/drive_values "ef2152ed667962c416322fe394052479")


