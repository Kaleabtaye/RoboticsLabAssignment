;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::AnglesJoint)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'AnglesJoint (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::ANGLESJOINT")
  (make-package "ARM_GAZEBO::ANGLESJOINT"))

(in-package "ROS")
;;//! \htmlinclude AnglesJoint.msg.html


(defclass arm_gazebo::AnglesJoint
  :super ros::object
  :slots (_jointA _jointB _jointC _jointD ))

(defmethod arm_gazebo::AnglesJoint
  (:init
   (&key
    ((:jointA __jointA) 0.0)
    ((:jointB __jointB) 0.0)
    ((:jointC __jointC) 0.0)
    ((:jointD __jointD) 0.0)
    )
   (send-super :init)
   (setq _jointA (float __jointA))
   (setq _jointB (float __jointB))
   (setq _jointC (float __jointC))
   (setq _jointD (float __jointD))
   self)
  (:jointA
   (&optional __jointA)
   (if __jointA (setq _jointA __jointA)) _jointA)
  (:jointB
   (&optional __jointB)
   (if __jointB (setq _jointB __jointB)) _jointB)
  (:jointC
   (&optional __jointC)
   (if __jointC (setq _jointC __jointC)) _jointC)
  (:jointD
   (&optional __jointD)
   (if __jointD (setq _jointD __jointD)) _jointD)
  (:serialization-length
   ()
   (+
    ;; float32 _jointA
    4
    ;; float32 _jointB
    4
    ;; float32 _jointC
    4
    ;; float32 _jointD
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _jointA
       (sys::poke _jointA (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointB
       (sys::poke _jointB (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointC
       (sys::poke _jointC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointD
       (sys::poke _jointD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _jointA
     (setq _jointA (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointB
     (setq _jointB (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointC
     (setq _jointC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointD
     (setq _jointD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_gazebo::AnglesJoint :md5sum-) "e5eaaa2abf697b049f6fc9d4bce9e1e0")
(setf (get arm_gazebo::AnglesJoint :datatype-) "arm_gazebo/AnglesJoint")
(setf (get arm_gazebo::AnglesJoint :definition-)
      "float32 jointA
float32 jointB
float32 jointC
float32 jointD
")



(provide :arm_gazebo/AnglesJoint "e5eaaa2abf697b049f6fc9d4bce9e1e0")


