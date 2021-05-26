#include <iostream>
#include <stdio.h>
#include <math.h>
#include "arm_lib/Angles.h"
#include "ros/ros.h"
#define PI 3.14159265

double *transformX(double x, double y, double z, double a, double b, double c, double d)
{
    double *newVector = new double[3];

    double newX = x + d;
    double newY = y * (cos(a * PI / 180)) - z * (sin(a * PI / 180));
    double newZ = y * (sin(a * PI / 180)) + z * (cos(a * PI / 180));

    newVector[0] = newX;
    newVector[1] = newY;
    newVector[2] = newZ;

    return newVector;
}
double *transformY(double x, double y, double z, double a, double b, double c, double d)
{
    double *newVector = new double[3];
    double newX = x * (cos(b * PI / 180)) + z * (sin(b * PI / 180));
    double newY = y + d;
    double newZ = -x * (sin(b * PI / 180)) + z * (cos(b * PI / 180));

    newVector[0] = newX;
    newVector[1] = newY;
    newVector[2] = newZ;

    return newVector;
}
double *transformZ(double x, double y, double z, double a, double b, double c, double d)
{
    double *newVector = new double[3];

    double newX = x * (cos(c * PI / 180)) - y * (sin(c * PI / 180));
    double newY = x * (sin(c * PI / 180)) + y * (cos(c * PI / 180));
    double newZ = z + d;

    newVector[0] = newX;
    newVector[1] = newY;
    newVector[2] = newZ;

    return newVector;
}
int main(int argc, char **argv)
{
    ros::init(argc, argv, "transformed_vector_publisher");
    ros::NodeHandle n;
    ros::Publisher chatter_pub = n.advertise<arm_lib::Angles>("vectorTopic", 1000);
    int count = 0;
    while (ros::ok())
    {
        arm_lib::Angles messageData;
        double xside, yside, zside, alphaAngle, betaAngle, gammaAngle, translationDist;
        double *xtrans;
        double *ytrans;
        double *ztrans;
        std::cout << "Enter the Value of X : ";
        std::cin >> xside;
        std::cout << "Enter the Value of Y : ";
        std::cin >> yside;
        std::cout << "Enter the Value of Z : ";
        std::cin >> zside;
        std::cout << "Enter the Value of alpha : ";
        std::cin >> alphaAngle;
        std::cout << "Enter the Value of beta : ";
        std::cin >> betaAngle;
        std::cout << "Enter the Value of gamma : ";
        std::cin >> gammaAngle;
        std::cout << "Enter the Value of translationDistance : ";
        std::cin >> translationDist;

        xtrans = transformX(xside, yside, zside, alphaAngle, betaAngle, gammaAngle, translationDist);
        ytrans = transformY(xside, yside, zside, alphaAngle, betaAngle, gammaAngle, translationDist);
        ztrans = transformZ(xside, yside, zside, alphaAngle, betaAngle, gammaAngle, translationDist);

      
        
        messageData.x = *(xtrans+0);
        messageData.y = *(xtrans+1);
        messageData.z = *(xtrans+2);

        messageData.yx = *(ytrans+0);
        messageData.yy = *(ytrans+1);
        messageData.yz = *(ytrans+2);

        messageData.zx = *(ztrans+0);
        messageData.zy = *(ztrans+1);
        messageData.zz = *(ztrans+2);
         ROS_INFO("Rotation and translation in the x direction :  %f , %f , %f ,", messageData.x,messageData.y,messageData.z);
         ROS_INFO("Rotation and translation in the y direction :  %f , %f , %f ,", messageData.yx,messageData.yy,messageData.yz);
         ROS_INFO("Rotation and translation in the z direction :  %f , %f , %f ,", messageData.zx,messageData.zy,messageData.zz);
        chatter_pub.publish(messageData);
        ros::Rate loop_rate(10);
        loop_rate.sleep();
        ++count;
    }
    return 0;
}