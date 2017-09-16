
#include <EEPROM.h>



void rebootToBootloader(){
  EEPROM.write(0, 13); //flag byte one with 13 - the magic bootloader entry number
  //reboot the cpu
  #define CPU_RESTART_ADDR (uint32_t *)0xE000ED0C
  #define CPU_RESTART_VAL 0x5FA0004
  #define CPU_RESTART (*CPU_RESTART_ADDR = CPU_RESTART_VAL);
  CPU_RESTART;
}

void setup()
{
  Serial.begin(9600);
  
}

void loop()
{

  if (Serial.available() > 0) {
    int incomingByte;
		incomingByte = Serial.read();
		Serial.print("USB received: ");
		Serial.write(incomingByte);
                Serial.println("");
                if(incomingByte == 'r')
                  rebootToBootloader();
	}

}
