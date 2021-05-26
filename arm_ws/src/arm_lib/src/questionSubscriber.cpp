#include "ros/ros.h"
#include "std_msgs/String.h"
#include "arm_lib/Angles.h"

void transformedVectorCallback(const arm_lib::Angles &vectors)
{
    std::cout << "Rotation and Translation in the X Axis : "
              << "x' = " << vectors.x << "\n"
              << "y' = " << vectors.y << "\n"
              << "z' = " << vectors.z << std::endl;
    std::cout << "Rotation and Translation in the Y Axis : "
              << "x' = " << vectors.yx << "\n"
              << "y' = " << vectors.yy << "\n"
              << "z' = " << vectors.yz << std::endl;
    std::cout << "Rotation and Translation in the Z Axis : "
              << "x' = " << vectors.zx << "\n"
              << "y' = " << vectors.zy << "\n"
              << "z' = " << vectors.zz << std::endl;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "transformed_vector_listener");

    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe("vectorTopic", 1000, transformedVectorCallback);

    ros::spin();

    return 0;
}