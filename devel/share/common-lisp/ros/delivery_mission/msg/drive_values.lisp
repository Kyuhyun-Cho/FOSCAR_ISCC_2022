; Auto-generated. Do not edit!


(cl:in-package delivery_mission-msg)


;//! \htmlinclude drive_values.msg.html

(cl:defclass <drive_values> (roslisp-msg-protocol:ros-message)
  ((throttle
    :reader throttle
    :initarg :throttle
    :type cl:fixnum
    :initform 0)
   (steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0))
)

(cl:defclass drive_values (<drive_values>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drive_values>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drive_values)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name delivery_mission-msg:<drive_values> is deprecated: use delivery_mission-msg:drive_values instead.")))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <drive_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_mission-msg:throttle-val is deprecated.  Use delivery_mission-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <drive_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_mission-msg:steering-val is deprecated.  Use delivery_mission-msg:steering instead.")
  (steering m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drive_values>) ostream)
  "Serializes a message object of type '<drive_values>"
  (cl:let* ((signed (cl:slot-value msg 'throttle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drive_values>) istream)
  "Deserializes a message object of type '<drive_values>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drive_values>)))
  "Returns string type for a message object of type '<drive_values>"
  "delivery_mission/drive_values")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drive_values)))
  "Returns string type for a message object of type 'drive_values"
  "delivery_mission/drive_values")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drive_values>)))
  "Returns md5sum for a message object of type '<drive_values>"
  "ef2152ed667962c416322fe394052479")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drive_values)))
  "Returns md5sum for a message object of type 'drive_values"
  "ef2152ed667962c416322fe394052479")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drive_values>)))
  "Returns full string definition for message of type '<drive_values>"
  (cl:format cl:nil "int16 throttle~%float64 steering~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drive_values)))
  "Returns full string definition for message of type 'drive_values"
  (cl:format cl:nil "int16 throttle~%float64 steering~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drive_values>))
  (cl:+ 0
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drive_values>))
  "Converts a ROS message object to a list"
  (cl:list 'drive_values
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':steering (steering msg))
))
