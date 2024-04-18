void decodes(int x,int y,int fields[][4])
{
  switch(fields[y][x])
  {
    case 0: warray(0,0,0,0);
      break;
    case 1: warray(0,0,0,1);
      break;
    case 2: warray(0,0,1,0);
      break;
    case 3: warray(0,0,1,1);
      break;
    case 4: warray(0,1,0,0);
      break;
    case 5: warray(0,1,0,1);
      break;
    case 6: warray(0,1,1,0);
      break;
    case 7: warray(0,1,1,1);
      break;
    case 8: warray(1,0,0,0);
      break;
    case 9: warray(1,0,0,1);
      break;
    case 10: warray(1,0,1,0);
      break;
    case 11: warray(1,0,1,1);
      break;
    case 12: warray(1,1,0,0);
      break;
    case 13: warray(1,1,0,1);
      break;
    case 14: warray(1,1,1,0);
      break;
    case 15: warray(1,1,1,1);
      break;
    default: warray(0,0,0,0);
  }
  
}

void warray(int a,int b,int c,int d)
{
  walld[0] = a;
  walld[1] = b;
  walld[2] = c;
  walld[3] = d;
}
