clc;
clear vars;
%%
image = imread('irc_arena.bmp');
map = binaryOccupancyMap(~image,20);
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
% pose = [1.5; 0.5; pi];
ranges = lidar(pose);
viz(pose,ranges);
%%
visited = zeros(9,4);
visited1 = zeros(9,4);
fields = zeros(9,4);
%%
z = find(~visited);
x = CStack(36);
y = CStack(36);
while 3 < pose(1) < 4 && 4.4 < pose(2) < 4.6 && ~isempty(z)
    if pose(3) == -pi || pose(3) == -3*pi/2
        pose = pose + [0;0;2*pi];
    end
    z = find(~visited);
    visited(pose(2)+0.5,pose(1)+0.5) = visited(pose(2)+0.5,pose(1)+0.5) + 1;
    visited1(pose(2)+0.5,pose(1)+0.5) = visited1(pose(2)+0.5,pose(1)+0.5) + 1;
    B = flipud(visited1);
    ranges = lidar(pose);
    [r,f,l] = wall(ranges,pose,visited);
    fields(pose(2) + 0.5,pose(1) + 0.5) = iswall(ranges,pose);
    ranges = lidar(pose);
    walls = [r,f,l];
    [d,flag] = choose(walls);
    x.push(pose(1));
    y.push(pose(2));
    if pose(3) == pi/2
        if d == "rev"
            pose = pose + [0;0;-pi];
            viz(pose,ranges);
        elseif d == 'l'
            pose = pose + [-1;0;pi/2];
            viz(pose,ranges);
        elseif d == 'r'
            pose = pose + [1;0;-pi/2];
            viz(pose,ranges);
        else
            pose = pose + [0;1;0];
            viz(pose,ranges);
        end
    elseif pose(3) == pi
        if d == "rev"
            pose = pose + [0;0;-pi];
            viz(pose,ranges);
        elseif d == 'l'
            pose = pose + [0;-1;-(3*pi)/2];
            viz(pose,ranges);
        elseif d == 'r'
            pose = pose + [0;1;-pi/2];
            viz(pose,ranges);
        else
            pose = pose + [-1;0;0];
            viz(pose,ranges);
        end
    elseif pose(3) == -pi/2
        if d == "rev"
            pose = pose + [0;0;-pi];
            viz(pose,ranges);
        elseif d == 'l'
            pose = pose + [1;0;pi/2];
            viz(pose,ranges);
        elseif d == 'r'
            pose = pose + [-1;0;-pi/2];
            viz(pose,ranges);
        else
            pose = pose + [0;-1;0];
            viz(pose,ranges);
        end
    elseif pose(3) == 0
        if d == "rev"
            pose = pose + [0;0;-pi];
            viz(pose,ranges);
        elseif d == 'l'
            pose = pose + [0;1;pi/2];
            viz(pose,ranges);
        elseif d == 'r'
            pose = pose + [0;-1;-pi/2];
            viz(pose,ranges);
        elseif d == 'f'
            pose = pose + [1;0;0];
            viz(pose,ranges);
        end
    end
    pause(0.25);
    theta = pose(3);
    if flag
        x1 = x.pop();
        y1 = y.pop();
    end
    while flag
        if pose(3) == -pi || pose(3) == -3*pi/2
            pose = pose + [0;0;2*pi];
        end
        if ~isempty(z)
            visited1(pose(2)+0.5,pose(1)+0.5) = visited1(pose(2)+0.5,pose(1)+0.5) + 1;
            z = find(~visited);
            x1 = x.pop();
            y1 = y.pop();
            theta = reqang(pose,x1,y1);
            pose = [x1;y1;theta];
            ranges = lidar(pose);
            viz(pose,ranges);
            [r,f,l] = wall(ranges,pose,visited);
            fields(pose(2) + 0.5,pose(1) + 0.5) = iswall(ranges,pose);
            ranges = lidar(pose);
            walls = [r,f,l];
            [d,flag] = choose(walls);
            pause(0.25);
        else
            flag = 0;
        end
    end
end
disp(B);
disp(flipud(fields));
s = sum(visited1);
s = sum(s);
disp("cost = ");
disp(s);
%%