; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-msg)


;//! \htmlinclude AnglesJoint.msg.html

(cl:defclass <AnglesJoint> (roslisp-msg-protocol:ros-message)
  ((joint1
    :reader joint1
    :initarg :joint1
    :type cl:float
    :initform 0.0)
   (joint2
    :reader joint2
    :initarg :joint2
    :type cl:float
    :initform 0.0)
   (joint3
    :reader joint3
    :initarg :joint3
    :type cl:float
    :initform 0.0)
   (joint4
    :reader joint4
    :initarg :joint4
    :type cl:float
    :initform 0.0))
)

(cl:defclass AnglesJoint (<AnglesJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnglesJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnglesJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-msg:<AnglesJoint> is deprecated: use arm_gazebo-msg:AnglesJoint instead.")))

(cl:ensure-generic-function 'joint1-val :lambda-list '(m))
(cl:defmethod joint1-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:joint1-val is deprecated.  Use arm_gazebo-msg:joint1 instead.")
  (joint1 m))

(cl:ensure-generic-function 'joint2-val :lambda-list '(m))
(cl:defmethod joint2-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:joint2-val is deprecated.  Use arm_gazebo-msg:joint2 instead.")
  (joint2 m))

(cl:ensure-generic-function 'joint3-val :lambda-list '(m))
(cl:defmethod joint3-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:joint3-val is deprecated.  Use arm_gazebo-msg:joint3 instead.")
  (joint3 m))

(cl:ensure-generic-function 'joint4-val :lambda-list '(m))
(cl:defmethod joint4-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:joint4-val is deprecated.  Use arm_gazebo-msg:joint4 instead.")
  (joint4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnglesJoint>) ostream)
  "Serializes a message object of type '<AnglesJoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnglesJoint>) istream)
  "Deserializes a message object of type '<AnglesJoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnglesJoint>)))
  "Returns string type for a message object of type '<AnglesJoint>"
  "arm_gazebo/AnglesJoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnglesJoint)))
  "Returns string type for a message object of type 'AnglesJoint"
  "arm_gazebo/AnglesJoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnglesJoint>)))
  "Returns md5sum for a message object of type '<AnglesJoint>"
  "99df565d35e16998dcc56f1295c43447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnglesJoint)))
  "Returns md5sum for a message object of type 'AnglesJoint"
  "99df565d35e16998dcc56f1295c43447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnglesJoint>)))
  "Returns full string definition for message of type '<AnglesJoint>"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnglesJoint)))
  "Returns full string definition for message of type 'AnglesJoint"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnglesJoint>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnglesJoint>))
  "Converts a ROS message object to a list"
  (cl:list 'AnglesJoint
    (cl:cons ':joint1 (joint1 msg))
    (cl:cons ':joint2 (joint2 msg))
    (cl:cons ':joint3 (joint3 msg))
    (cl:cons ':joint4 (joint4 msg))
))
