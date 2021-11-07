#include "LPC23xx.h"
void delay()
{ 
 int i,j;
 for(i=0; i<0xFF;i++);
 for(j=0; j<0XFF;j++);
}
int main(void)
{
 IODIR0 = 0XFFFFFFFF;

 while(1)
 { 
 IOPIN0=0X00000240;
 delay();
 IOPIN0=0X00000140;
 delay();
 IOPIN0=0X00000180;
 delay();
 IOPIN0=0X00000280;
 delay();
 }

return 0;
}