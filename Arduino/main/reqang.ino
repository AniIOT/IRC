int reqang(int x,int y,int a,int x1,int y1)
{
  int theta;
  if(a == 0)
  {
      if(x1 > x && y1 == y)
          theta = 0;
      else if( x1 == x && y1 > y)
          theta = 90;
      else if( x1 == x && y1 < y)
          theta = -90;
  }
  else if(a == 90)
  {
      if(x1 == x && y1 > y)
          theta = 90;
      else if(x1 > x && y1 == y)
          theta = 0;
      else if(x1 < x && y1 == y)
          theta = 180;
  }
  else if(a == -90)
  {
      if(x1 == x && y1 < y)
          theta = -90;
      else if(x1 > x && y1 == y)
          theta = 0;
      else if(x1 < x && y1 == y)
          theta = 180;
  }
  else if(a == 180)
  {
      if(x1 < x && y1 == y)
          theta = 180;
      else if(x1 == x && y1 > y)
          theta = 90;
      else if(x1 == x && y1 < y)
          theta = -90;
  }
  return theta;
}
