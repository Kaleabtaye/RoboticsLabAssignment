#include <functional>
#include <gazebo/gazebo.hh>
#include <ros/ros.h>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include "arm_gazebo/AnglesJoint.h"

namespace gazebo
{
  class JointAngle : public ModelPlugin
  {
  public:
    void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      // Store the pointer to the model
      this->model = _parent;
      this->jointController = this->model->GetJointController();
      ros::NodeHandle n;
      this->jointAnglePublisher = n.advertise<arm_gazebo::AnglesJoint>("/publishAngle", 1000);

      if (!ros::isInitialized())
      {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "publish_joint_angles", ros::init_options::NoSigintHandler);
      }
      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&JointAngle::OnUpdate, this));
    };

  public:
    void OnUpdate()
    {
      this->publishJointAngles();
    }

  public:
    void publishJointAngles()
    {
      
      double a1 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);

      double a2 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);

      double a3 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);

      double a4 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);

      a1 = a1 * 180.0 / M_PI;
      a2 = a2 * 180.0 / M_PI;
      a3 = a3 * 180.0 / M_PI;
      a4 = a4 * 180.0 / M_PI;

      arm_gazebo::AnglesJoint anglesJoint;

    anglesJoint.jointA = a1;
    anglesJoint.jointB = a2;
    anglesJoint.jointC = a3;
    anglesJoint.jointD = a3;

      ros::Rate loop_rate(10);
      ROS_INFO("MSG[JOINT 1 Angle]: %f", anglesJoint.jointA);
      ROS_INFO("MSG[JOINT 2 Angle]: %f",  anglesJoint.jointB);
      ROS_INFO("MSG[JOINT 3 Angle]: %f",  anglesJoint.jointC);
      ROS_INFO("MSG[JOINT 4 Angle]: %f",  anglesJoint.jointD);

      // PUBLISH
      jointAnglePublisher.publish(anglesJoint);
    }

    // Pointer to the model
  private:
    physics::ModelPtr model;

  private:
    event::ConnectionPtr updateConnection;

  private:
    physics::JointControllerPtr jointController;

  private:
    ros::Publisher jointAnglePublisher;
  };
  // Register this plugin with the simulator
  GZ_REGISTER_MODEL_PLUGIN(JointAngle)
}