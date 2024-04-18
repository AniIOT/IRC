void turnright(void)
{
  int steps = 0;
  int i = 25;
  int reqsteps = 68;
  while(steps<=reqsteps)
  {
    while(i<50)
    {
      sLeft.setSpeed(i);
      sRight.setSpeed(i);
      int j = 0;
      while(j<=15)
      {
        sLeft.step(1);
        sRight.step(-1);
        steps++;
        j++;
        if(steps>=reqsteps)
        break;
      }
      delay(5);
      i = i+2;
      if(steps>=reqsteps)
        break;
    }
    sLeft.step(1);
    sRight.step(-1);
    steps++;
  }
}
