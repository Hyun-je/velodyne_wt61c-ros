#include "ros/ros.h"
#include "wt61c_uart.h"
#include "serial/serial.h"
#include <time.h>

int main(int argc, char** argv)
{
	ros::init(argc, argv, "Wt61cUart_node");

	ros::NodeHandle n;

	WTU::Wt61cUart wt61cuart(n);    //initilize the uart parameter
	
	while(wt61cuart.UartInit()){
		sleep(1);}      //declare the uart port

	ros::Rate loop_rate(100);

	int i = 0;
	while(ros::ok()){
		wt61cuart.GetAndCheck();

		i++;
		if(i > 10) {
			wt61cuart.TranslateAndPub();
			i = 0;
		}

		wt61cuart.ClearUart();
		loop_rate.sleep();
	}
	return 0;
}
