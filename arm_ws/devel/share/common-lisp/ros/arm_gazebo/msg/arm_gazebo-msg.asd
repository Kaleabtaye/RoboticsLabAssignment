
(cl:in-package :asdf)

(defsystem "arm_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AnglesJoint" :depends-on ("_package_AnglesJoint"))
    (:file "_package_AnglesJoint" :depends-on ("_package"))
  ))