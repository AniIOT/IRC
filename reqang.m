function theta = reqang(pose,x1,y1)
if pose(3) == 0
    if x1 > pose(1) && y1 == pose(2)
        theta = 0;
    elseif x1 == pose(1) && y1 > pose(2)
        theta = pi/2;
    elseif x1 == pose(1) && y1 < pose(2)
        theta = -pi/2;
    end
elseif pose(3) == pi/2
    if x1 == pose(1) && y1 > pose(2)
        theta = pi/2;
    elseif x1 > pose(1) && y1 == pose(2)
        theta = 0;
    elseif x1 < pose(1) && y1 == pose(2)
        theta = pi;
    end
elseif pose(3) == -pi/2
    if x1 == pose(1) && y1 < pose(2)
        theta = -pi/2;
    elseif x1 > pose(1) && y1 == pose(2)
        theta = 0;
    elseif x1 < pose(1) && y1 == pose(2)
        theta = pi;
    end
elseif pose(3) == pi
    if x1 < pose(1) && y1 == pose(2)
        theta = pi;
    elseif x1 == pose(1) && y1 > pose(2)
        theta = pi/2;
    elseif x1 == pose(1) && y1 < pose(2)
        theta = -pi/2;
    end
end