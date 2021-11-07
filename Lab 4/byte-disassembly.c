#include "LPC23xx.h" 
 
int main() 
{ 
    FIO3DIR = 0xFF;          
    FIO4DIR = 0x00;        
 
    while(1)                           
     { 
   int HighNibble = (FIO4PIN & 0xF0);       
   HighNibble = HighNibble >> 4;     
  
   int LowNibble = (FIO4PIN & 0x0F);     
   FIO3PIN = HighNibble*LowNibble;      
    } 
    return 0; 
}