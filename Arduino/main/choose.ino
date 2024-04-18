char choose(void)
{
  char dir;
  int n = findc(rw, fw, lw);
  int z;
    if (n == 0)
    {
      dir = 'v';
//      flag = 1;
    }
    else if (n == 1)
    {
//          flag = 0;
      if (rw == 0)
        dir = 'r';
      else if (fw == 0)
        dir = 'f';
      else
        dir = 'l';
    }
    else if (n == 2)
    {
      int walls[3] = {rw, fw, lw};
//          flag = 0;
      while (true)
       {
        z = random(0, 4);
        if (walls[z] == 0)
          break;
        else
          continue;
       }
      if (z == 0)
        dir = 'r';
      else if (z == 1)
        dir = 'f';
      else
        dir = 'l';
    }

    else if (n == 3)
    {
      //      flag = 0;
      z = random(0, 4);
      if(z == 1)
        dir = 'r';
      else if(z == 2)
        dir = 'f';
      else
        dir = 'l';
    }
    return dir;
}
  
int findc(int r,int f,int l)
{
  int t = 0;
  if(r == 0)
  t++;
  if(f == 0)
  t++;
  if(l == 0)
  t++;
  return t;
}
