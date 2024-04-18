#include "main.h"

void setup()
{
  //motors//
  sLeft.setSpeed(5);
  sRight.setSpeed(5); 
  //colour sensor//
  pinMode(cs[0],OUTPUT);
  pinMode(cs[1],OUTPUT);
  pinMode(cs[2],OUTPUT);
  pinMode(cs[3],OUTPUT);
  pinMode(ce,OUTPUT);
  pinMode(co,INPUT);
  //wall sensors//
  pinMode(wsen[0],INPUT);
  pinMode(wsen[1],INPUT);
  pinMode(wsen[2],INPUT);
  //signal to camera module//
  pinMode(sig,OUTPUT);

  Serial.begin(9600);
}
int i = 0;
void loop()
{
  while(i<2)
  {
  forward();
  i++;
}
}
