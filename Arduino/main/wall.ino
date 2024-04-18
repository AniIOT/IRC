void wall(int r, int f, int l, int x, int y, int a,int visited[][4])
{
  if(r == 0)
      rw = 1;
  else if(a == 0)
  {
      if(visited[y - 1][x])
          rw = 1;
      else
          rw = 0;
  }
  else if(a == 90)
  {
      if(visited[y][x + 1])
          rw = 1;
      else
          rw = 0;
  }
  else if(a == -90)
  {
      if(visited[y][x - 1])
          rw = 1;
      else
          rw = 0;
  }
  else if(a == 180)
  {
      if(visited[y + 1][x])
          rw = 1;
      else
          rw = 0;
  }
  else
      rw = 0;
  
  
  if(f == 0)
      fw = 1;
  else if(a == 0)
  {
      if(visited[y][x + 1])
          fw = 1;
      else
          fw = 0;
  }
  else if(a == 90)
  {
      if(visited[y + 1][x])
          fw = 1;
      else
          fw = 0;
  }
  else if(a == -90)
  {
      if(visited[y - 1][x])
          fw = 1;
      else
          fw = 0;
  }
  else if(a == 180)
  {
      if(visited[y][x - 1])
          fw = 1;
      else
          fw = 0;
  }
  else
      fw = 0;
  
      
  if(l == 0)
      lw = 1;
  else if(a == 0)
      if(visited[y + 1][x])
          lw = 1;
      else
          lw = 0;
  else if(a == 90)
  {
      if(visited[y][x - 1])
          lw = 1;
      else
          lw = 0;
  }
  else if(a == -90)
  {
      if(visited[y][x + 1])
          lw = 1;
      else
          lw = 0;
  }
  else if(a == 180)
  {
      if(visited[y - 1][x])
          lw = 1;
      else
          lw = 0;
  }
  else
      lw = 0;
}
