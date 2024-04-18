function [r,f,l] = wall(ranges,pose,visited)
if ranges(1) < 1
    r = 1;
elseif pose(3) == 0
    if visited(pose(2) - 0.5,pose(1) + 0.5)
        r = 1;
    else
        r = 0;
    end
elseif pose(3) == pi/2
    if visited(pose(2) + 0.5,pose(1) + 1.5)
        r = 1;
    else
        r = 0;
    end
elseif pose(3) == -pi/2
    if visited(pose(2) + 0.5,pose(1) - 0.5)
        r = 1;
    else
        r = 0;
    end
elseif pose(3) == pi
    if visited(pose(2) + 1.5,pose(1) + 0.5)
        r = 1;
    else
        r = 0;
    end
else
    r = 0;
end
if ranges(2) < 1
    f = 1;
elseif pose(3) == 0
    if visited(pose(2) + 0.5,pose(1) + 1.5)
        f = 1;
    else
        f = 0;
    end
elseif pose(3) == pi/2
    if visited(pose(2) + 1.5,pose(1) + 0.5)
        f = 1;
    else
        f = 0;
    end
elseif pose(3) == -pi/2
    if visited(pose(2) - 0.5,pose(1) + 0.5)
        f = 1;
    else
        f = 0;
    end
elseif pose(3) == pi
    if visited(pose(2) + 0.5,pose(1) - 0.5)
        f = 1;
    else
        f = 0;
    end
else
    f = 0;
end
if ranges(3) < 1
    l = 1;
elseif pose(3) == 0
    if visited(pose(2) + 1.5,pose(1) + 0.5)
        l = 1;
    else
        l = 0;
    end
elseif pose(3) == pi/2
    if visited(pose(2) + 0.5,pose(1) - 0.5)
        l = 1;
    else
        l = 0;
    end
elseif pose(3) == -pi/2
    if visited(pose(2) + 0.5,pose(1) + 1.5)
        l = 1;
    else
        l = 0;
    end
elseif pose(3) == pi
    if visited(pose(2) - 0.5,pose(1) + 0.5)
        l = 1;
    else
        l = 0;
    end
else
    l = 0;
end
end