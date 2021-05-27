; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-msg)


;//! \htmlinclude AnglesJoint.msg.html

(cl:defclass <AnglesJoint> (roslisp-msg-protocol:ros-message)
  ((jointA
    :reader jointA
    :initarg :jointA
    :type cl:float
    :initform 0.0)
   (jointB
    :reader jointB
    :initarg :jointB
    :type cl:float
    :initform 0.0)
   (jointC
    :reader jointC
    :initarg :jointC
    :type cl:float
    :initform 0.0)
   (jointD
    :reader jointD
    :initarg :jointD
    :type cl:float
    :initform 0.0))
)

(cl:defclass AnglesJoint (<AnglesJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnglesJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnglesJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-msg:<AnglesJoint> is deprecated: use arm_gazebo-msg:AnglesJoint instead.")))

(cl:ensure-generic-function 'jointA-val :lambda-list '(m))
(cl:defmethod jointA-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:jointA-val is deprecated.  Use arm_gazebo-msg:jointA instead.")
  (jointA m))

(cl:ensure-generic-function 'jointB-val :lambda-list '(m))
(cl:defmethod jointB-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:jointB-val is deprecated.  Use arm_gazebo-msg:jointB instead.")
  (jointB m))

(cl:ensure-generic-function 'jointC-val :lambda-list '(m))
(cl:defmethod jointC-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:jointC-val is deprecated.  Use arm_gazebo-msg:jointC instead.")
  (jointC m))

(cl:ensure-generic-function 'jointD-val :lambda-list '(m))
(cl:defmethod jointD-val ((m <AnglesJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:jointD-val is deprecated.  Use arm_gazebo-msg:jointD instead.")
  (jointD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnglesJoint>) ostream)
  "Serializes a message object of type '<AnglesJoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'jointA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'jointB))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'jointC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'jointD))))
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
    (cl:setf (cl:slot-value msg 'jointA) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointB) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointD) (roslisp-utils:decode-single-float-bits bits)))
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
  "e5eaaa2abf697b049f6fc9d4bce9e1e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnglesJoint)))
  "Returns md5sum for a message object of type 'AnglesJoint"
  "e5eaaa2abf697b049f6fc9d4bce9e1e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnglesJoint>)))
  "Returns full string definition for message of type '<AnglesJoint>"
  (cl:format cl:nil "float32 jointA~%float32 jointB~%float32 jointC~%float32 jointD~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnglesJoint)))
  "Returns full string definition for message of type 'AnglesJoint"
  (cl:format cl:nil "float32 jointA~%float32 jointB~%float32 jointC~%float32 jointD~%~%"))
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
    (cl:cons ':jointA (jointA msg))
    (cl:cons ':jointB (jointB msg))
    (cl:cons ':jointC (jointC msg))
    (cl:cons ':jointD (jointD msg))
))
