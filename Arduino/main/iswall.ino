int iswall(int r, int f, int l, int x, int y, int a)
{
  int A = 0, N = 0, S = 0, E = 0, W = 0;
  if (a == 0)
  { 
    W = 0;
    if (r == 0)
      S = 1;
    else
      S = 0;

    if (f == 0)
       E = 1;
    else
       E = 0;

    if (l == 0)
      N = 1;
    else
      N = 0;
  
    if (y == 8)
      N = 1;  
    if (y == 0)
      S = 1;  
    if (x == 0)
      W = 1;  
    if (x == 3)
        E = 1;
  }

  if (a == 90)
  {
    S = 0;
    if (r == 0)
      E = 1;
    else
      E = 0;
    
    if (f == 0)
      N = 1;
    else
      N = 0;
    
    if (l == 0)
      W = 1;
    else
      W = 0;
    
    if (y == 8.5)
      N = 1;    
    if (y == 0.5)
      S = 1;    
    if (x == 0.5)
      W = 1;    
    if (x == 3.5)
      E = 1;
  }
  
  if (a == 180)
  {
    E = 0;
    if (r == 0)
      N = 1;
    else
      N = 0;
    
    if (f == 0)
      W = 1;
    else
      W = 0;
    
    if (l == 0)
      S = 1;
    else
      S = 0;
    
    if (y == 8.5)
      N = 1;    
    if (y == 0.5)
      S = 1;    
    if (x == 0.5)
      W = 1;    
    if (x == 3.5)
      E = 1;
  }
  
  if (a == -90)
  {
    N = 0;
    if (r == 0)
      W = 1;
    else
      W = 0;
    
    if (f == 0)
      S = 1;
    else
      S = 0;
    
    if (l == 0)
      E = 1;
    else
      E = 0;
    
    if (y == 8.5)
      N = 1;
    if (y == 0.5)
      S = 1;
    if (x == 0.5)
      W = 1;
    if (x == 3.5)
      E = 1;
  }
  A = bin2dec(N,S,E,W);
  return A;
}

int bin2dec(int n,int s,int e, int w)
{
  int a = 0;
  switch(n)
  {
    case 0 : 
      switch(s)
      {
        case 0:
          switch(e)
          {
            case 0:
              switch(w)
              {
                case 0: a = 0;
                  break;
                case 1: a = 1;
                  break;
              }
              break;
            case 1:
              switch(w)
              {
                case 0: a = 2; 
                  break;
                case 1: a = 3;
                  break;
              }
              break;
          }
          break;
        case 1:
          switch(e)
          {
            case 0:
              switch(w)
              {
                case 0: a = 4;
                  break;
                case 1: a = 5;
                  break;
              }
              break;
            case 1:
              switch(w)
              {
                case 0: a = 6;
                  break;
                case 1: a = 7;
                  break;
              }
              break;
          }
          break;
      }
      break;
    case 1:
      switch(s)
      {
        case 0:
          switch(e)
          {
            case 0:
              switch(w)
              {
                case 0: a = 8;
                  break;
                case 1: a = 9;
                  break;
              }
              break;
            case 1:
              switch(w)
              {
                case 0: a = 10;
                  break;
                case 1: a = 11;
                  break;
              }
              break;
          }
          break;
        case 1:
          switch(e)
          {
            case 0:
              switch(w)
              {
                case 0: a = 12;
                  break;
                case 1: a = 13;
                  break;
              }
              break;
            case 1:
              switch(w)
              {
                case 0: a = 14;
                  break;
                case 1: a = 15;
                  break;
              }
              break;
          }
          break;
      }
      break;
      default: a = 0;
  }
  return a;
}
