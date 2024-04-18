%%
image = imread('irc_arena.bmp');
map = robotics.OccupancyGrid(~image,20);
viz = Visualizer2D;
viz.showTrajectory = true;
viz.mapName = 'map';
pose = [0.5; 0.5; pi/2];
viz(pose);
%%
release(viz);
lidar = LidarSensor;
lidar.scanAngles = linspace(-pi/2,pi/2,3);
attachLidarSensor(viz,lidar);
ranges = lidar(pose);
viz(pose,ranges);
%%
path = zeros(9,4);
path(5,4) = 1; %goal
path = getpath(fields,path);
disp(flipud(path));
%%
while path(pose(2)+0.5,pose(1)+0.5) ~= 1
go = follow(path,pose,fields);
if go == "up"
    pose(2) = pose(2) + 1;
    pose(3) = pi/2;
elseif go == "dw"
    pose(2) = pose(2) - 1;
    pose(3) = -pi/2;
elseif go == "rt"
    pose(1) = pose(1) + 1;
    pose(3) = 0;
elseif go == "lt"
    pose(1) = pose(1) - 1;
    pose(3) = pi;
end
ranges = lidar(pose);
viz(pose,ranges);
pause(0.25);
end
pause(2);
%%
% path = zeros(9,4);
% path(5,2) = 1;
% path = getpath(fields,path);
% disp(flipud(path));
% %%
% while path(pose(2)+0.5,pose(1)+0.5) ~= 1
% go = follow(path,pose,fields);
% if go == "up"
%     pose(2) = pose(2) + 1;
%     pose(3) = pi/2;
% elseif go == "dw"
%     pose(2) = pose(2) - 1;
%     pose(3) = -pi/2;
% elseif go == "rt"
%     pose(1) = pose(1) + 1;
%     pose(3) = 0;
% elseif go == "lt"
%     pose(1) = pose(1) - 1;
%     pose(3) = pi;
% end
% ranges = lidar(pose);
% viz(pose,ranges);
% pause(0.25);
% end
% pause(2);
% %%
% path = zeros(9,4);
% path(9,4) = 1;
% path = getpath(fields,path);
% disp(flipud(path));
% %%
% while path(pose(2)+0.5,pose(1)+0.5) ~= 1
% go = follow(path,pose,fields);
% if go == "up"
%     pose(2) = pose(2) + 1;
%     pose(3) = pi/2;
% elseif go == "dw"
%     pose(2) = pose(2) - 1;
%     pose(3) = -pi/2;
% elseif go == "rt"
%     pose(1) = pose(1) + 1;
%     pose(3) = 0;
% elseif go == "lt"
%     pose(1) = pose(1) - 1;
%     pose(3) = pi;
% end
% ranges = lidar(pose);
% viz(pose,ranges);
% pause(0.25);
% end