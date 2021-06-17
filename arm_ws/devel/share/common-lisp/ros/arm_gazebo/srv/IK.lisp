; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-srv)


;//! \htmlinclude IK-request.msg.html

(cl:defclass <IK-request> (roslisp-msg-protocol:ros-message)
  ((desired_pose
    :reader desired_pose
    :initarg :desired_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass IK-request (<IK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<IK-request> is deprecated: use arm_gazebo-srv:IK-request instead.")))

(cl:ensure-generic-function 'desired_pose-val :lambda-list '(m))
(cl:defmethod desired_pose-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:desired_pose-val is deprecated.  Use arm_gazebo-srv:desired_pose instead.")
  (desired_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-request>) ostream)
  "Serializes a message object of type '<IK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'desired_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'desired_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-request>) istream)
  "Deserializes a message object of type '<IK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'desired_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'desired_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-request>)))
  "Returns string type for a service object of type '<IK-request>"
  "arm_gazebo/IKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-request)))
  "Returns string type for a service object of type 'IK-request"
  "arm_gazebo/IKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-request>)))
  "Returns md5sum for a message object of type '<IK-request>"
  "8e5bcb00278a6fecb7986c350cbe23a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-request)))
  "Returns md5sum for a message object of type 'IK-request"
  "8e5bcb00278a6fecb7986c350cbe23a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-request>)))
  "Returns full string definition for message of type '<IK-request>"
  (cl:format cl:nil "float64[] desired_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-request)))
  "Returns full string definition for message of type 'IK-request"
  (cl:format cl:nil "float64[] desired_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'desired_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-request
    (cl:cons ':desired_pose (desired_pose msg))
))
;//! \htmlinclude IK-response.msg.html

(cl:defclass <IK-response> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass IK-response (<IK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<IK-response> is deprecated: use arm_gazebo-srv:IK-response instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:joint_angles-val is deprecated.  Use arm_gazebo-srv:joint_angles instead.")
  (joint_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-response>) ostream)
  "Serializes a message object of type '<IK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-response>) istream)
  "Deserializes a message object of type '<IK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-response>)))
  "Returns string type for a service object of type '<IK-response>"
  "arm_gazebo/IKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-response)))
  "Returns string type for a service object of type 'IK-response"
  "arm_gazebo/IKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-response>)))
  "Returns md5sum for a message object of type '<IK-response>"
  "8e5bcb00278a6fecb7986c350cbe23a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-response)))
  "Returns md5sum for a message object of type 'IK-response"
  "8e5bcb00278a6fecb7986c350cbe23a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-response>)))
  "Returns full string definition for message of type '<IK-response>"
  (cl:format cl:nil "float64[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-response)))
  "Returns full string definition for message of type 'IK-response"
  (cl:format cl:nil "float64[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-response
    (cl:cons ':joint_angles (joint_angles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IK)))
  'IK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IK)))
  'IK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK)))
  "Returns string type for a service object of type '<IK>"
  "arm_gazebo/IK")