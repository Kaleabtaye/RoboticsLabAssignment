;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::Angles)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'Angles (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::ANGLES")
  (make-package "ARM_LIB::ANGLES"))

(in-package "ROS")
;;//! \htmlinclude Angles.msg.html


(defclass arm_lib::Angles
  :super ros::object
  :slots (_x _y _z _yx _yy _yz _zx _zy _zz _alpha _beta _gamma _translationDist ))

(defmethod arm_lib::Angles
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yx __yx) 0.0)
    ((:yy __yy) 0.0)
    ((:yz __yz) 0.0)
    ((:zx __zx) 0.0)
    ((:zy __zy) 0.0)
    ((:zz __zz) 0.0)
    ((:alpha __alpha) 0.0)
    ((:beta __beta) 0.0)
    ((:gamma __gamma) 0.0)
    ((:translationDist __translationDist) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yx (float __yx))
   (setq _yy (float __yy))
   (setq _yz (float __yz))
   (setq _zx (float __zx))
   (setq _zy (float __zy))
   (setq _zz (float __zz))
   (setq _alpha (float __alpha))
   (setq _beta (float __beta))
   (setq _gamma (float __gamma))
   (setq _translationDist (float __translationDist))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yx
   (&optional __yx)
   (if __yx (setq _yx __yx)) _yx)
  (:yy
   (&optional __yy)
   (if __yy (setq _yy __yy)) _yy)
  (:yz
   (&optional __yz)
   (if __yz (setq _yz __yz)) _yz)
  (:zx
   (&optional __zx)
   (if __zx (setq _zx __zx)) _zx)
  (:zy
   (&optional __zy)
   (if __zy (setq _zy __zy)) _zy)
  (:zz
   (&optional __zz)
   (if __zz (setq _zz __zz)) _zz)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:translationDist
   (&optional __translationDist)
   (if __translationDist (setq _translationDist __translationDist)) _translationDist)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yx
    4
    ;; float32 _yy
    4
    ;; float32 _yz
    4
    ;; float32 _zx
    4
    ;; float32 _zy
    4
    ;; float32 _zz
    4
    ;; float32 _alpha
    4
    ;; float32 _beta
    4
    ;; float32 _gamma
    4
    ;; float32 _translationDist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yx
       (sys::poke _yx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yy
       (sys::poke _yy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yz
       (sys::poke _yz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zx
       (sys::poke _zx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zy
       (sys::poke _zy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zz
       (sys::poke _zz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _translationDist
       (sys::poke _translationDist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yx
     (setq _yx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yy
     (setq _yy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yz
     (setq _yz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zx
     (setq _zx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zy
     (setq _zy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zz
     (setq _zz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alpha
     (setq _alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _beta
     (setq _beta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gamma
     (setq _gamma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _translationDist
     (setq _translationDist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_lib::Angles :md5sum-) "efc6069eeaa1308aece036b76bdc2160")
(setf (get arm_lib::Angles :datatype-) "arm_lib/Angles")
(setf (get arm_lib::Angles :definition-)
      "float32 x
float32 y
float32 z
float32 yx
float32 yy
float32 yz
float32 zx
float32 zy
float32 zz
float32 alpha
float32 beta
float32 gamma
float32 translationDist
")



(provide :arm_lib/Angles "efc6069eeaa1308aece036b76bdc2160")


