#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
namespace gazebo
{
	class ModelPush : public ModelPlugin
	{
	public:
		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
		{
			this->model = _model;
			// this->pid = common::PID(12.4, 25.2, 10.5);
			this->jointController = this->model->GetJointController();

			// CREATE THE TOPIC
			const std::string topicName = "~/" + this->model->GetName() + "/vel_cmd";
			if (!ros::isInitialized())
			{
				int argc = 0;
				char **argv = NULL;
				ros::init(argc, argv, "gazebo_client", ros::init_options::NoSigintHandler);
			}

			this->rosNode.reset(new ros::NodeHandle("gazebo_client"));

			// ros::NodeHandle n;
			// this->pidPublisher = n.advertise<arm_gazebo::JointAngles>("/pidPublisher", 1000);

			ros::SubscribeOptions so =
				ros::SubscribeOptions::create<arm_gazebo::JointAngles>(
					"/pidPublisher",
					1,
					boost::bind(&gazebo::ProgrammablePID::OnMsg, this, _1),
					ros::VoidPtr(), &this->rosQueue);
			this->rosSub = this->rosNode->subscribe(so);

			this->rosQueueThread = std::thread(std::bind(&ProgrammablePID::QueueThread, this));
		}

	public:
		void OnMsg(const arm_gazebo::JointAngles::ConstPtr &_msg)
		{
			this->SetAngles(_msg->joint1, _msg->joint2, _msg->joint3, _msg->joint4);
		}

	public:
		void SetAngles(double _angle1, double _angle2, double _angle3, double _angle4)
		{
			std::string joint1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
			std::string joint2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			std::string joint3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
			std::string joint4 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();

			double _newAngle1 = _angle1 * 180.0 / M_PI;
			double _newAngle2 = _angle2 * 180.0 / M_PI;
			double _newAngle3 = _angle3 * 180.0 / M_PI;
			double _newAngle4 = _angle4 * 180.0 / M_PI;

			this->jointController->SetJointPosition(joint1, _newAngle1, 0);
			this->jointController->SetJointPosition(joint2, _newAngle2, 0);
			this->jointController->SetJointPosition(joint3, _newAngle3, 0);
			this->jointController->SetJointPosition(joint4, _newAngle4, 0);
		}

		// Called by the world update start event
	public:
		void OnUpdate()
		{
			float angleDegree = -90;
			float rad = M_PI * angleDegree / 180;

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			// this->jointController->SetPositionPID(name, pid);
			// this->jointController->SetPositionTarget(name, rad);
			// this->jointController->Update();

			// Get joint position by index.
			// 0 returns rotation accross X axis
			// 1 returns rotation accross Y axis
			// 2 returns rotation accross Z axis
			// If the Joint has only Z axis for rotation, 0 returns that value and 1 and 2 return nan
			double a1 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);
			double a2 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);
			double a3 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);
			double a4 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);
			// double a2 = this->model->GetJoint("chasis_arm1_joint").Position(0);
			// double a3 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(2);
			std::cout << "Current arm1_arm2_joint values: " << a1 * 180.0 / M_PI << std::endl;
			std::cout << "Current arm2_arm3_joint values: " << a2 * 180.0 / M_PI << std::endl;
			std::cout << "Current arm3_arm4_joint values: " << a3 * 180.0 / M_PI << std::endl;
			std::cout << "Current chasis_arm1_joint values: " << a4 * 180.0 / M_PI << std::endl;
		}

	private:
		void QueueThread()
		{
			static const double timeout = 0.01;
			while (this->rosNode->ok())
			{
				this->rosQueue.callAvailable(ros::WallDuration(timeout));
			}
		}

		// a pointer that points to a model object
	private:
		std::unique_ptr<ros::NodeHandle> rosNode;

	private:
		ros::Subscriber rosSub;

	private:
		ros::CallbackQueue rosQueue;

	private:
		std::thread rosQueueThread;

	private:
		ros::Publisher pidPublisher;

	private:
		physics::ModelPtr model;

	private:
		physics::JointControllerPtr jointController;

	private:
		event::ConnectionPtr updateConnection;
	};
	// Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
	GZ_REGISTER_MODEL_PLUGIN(ProgrammablePID)

}