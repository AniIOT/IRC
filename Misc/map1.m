image = imread('irc_arena.bmp');
map = robotics.OccupancyGrid(~image,20);
show(map)