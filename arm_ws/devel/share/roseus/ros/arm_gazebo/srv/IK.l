;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::IK)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'IK (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::IK")
  (make-package "ARM_GAZEBO::IK"))
(unless (find-package "ARM_GAZEBO::IKREQUEST")
  (make-package "ARM_GAZEBO::IKREQUEST"))
(unless (find-package "ARM_GAZEBO::IKRESPONSE")
  (make-package "ARM_GAZEBO::IKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::IKRequest
  :super ros::object
  :slots (_desired_pose ))

(defmethod arm_gazebo::IKRequest
  (:init
   (&key
    ((:desired_pose __desired_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _desired_pose __desired_pose)
   self)
  (:desired_pose
   (&optional __desired_pose)
   (if __desired_pose (setq _desired_pose __desired_pose)) _desired_pose)
  (:serialization-length
   ()
   (+
    ;; float64[] _desired_pose
    (* 8    (length _desired_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _desired_pose
     (write-long (length _desired_pose) s)
     (dotimes (i (length _desired_pose))
       (sys::poke (elt _desired_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _desired_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desired_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _desired_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::IKResponse
  :super ros::object
  :slots (_joint_angles ))

(defmethod arm_gazebo::IKResponse
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_angles
    (* 8    (length _joint_angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::IK
  :super ros::object
  :slots ())

(setf (get arm_gazebo::IK :md5sum-) "8e5bcb00278a6fecb7986c350cbe23a5")
(setf (get arm_gazebo::IK :datatype-) "arm_gazebo/IK")
(setf (get arm_gazebo::IK :request) arm_gazebo::IKRequest)
(setf (get arm_gazebo::IK :response) arm_gazebo::IKResponse)

(defmethod arm_gazebo::IKRequest
  (:response () (instance arm_gazebo::IKResponse :init)))

(setf (get arm_gazebo::IKRequest :md5sum-) "8e5bcb00278a6fecb7986c350cbe23a5")
(setf (get arm_gazebo::IKRequest :datatype-) "arm_gazebo/IKRequest")
(setf (get arm_gazebo::IKRequest :definition-)
      "float64[] desired_pose
---
float64[] joint_angles
")

(setf (get arm_gazebo::IKResponse :md5sum-) "8e5bcb00278a6fecb7986c350cbe23a5")
(setf (get arm_gazebo::IKResponse :datatype-) "arm_gazebo/IKResponse")
(setf (get arm_gazebo::IKResponse :definition-)
      "float64[] desired_pose
---
float64[] joint_angles
")



(provide :arm_gazebo/IK "8e5bcb00278a6fecb7986c350cbe23a5")


