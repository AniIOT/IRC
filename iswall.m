function A = iswall(ranges,pose)
N = 0;
S = 0;
E = 0;
W = 0;
if pose(3) == 0
    W = 0;
    if ranges(1) < 1
        S = 1;
    else
        S = 0;
    end
    if ranges(2) < 1
        E = 1;
    else
        E = 0;
    end
    if ranges(3) < 1
        N = 1;
    else
        N = 0;
    end
    if pose(2) == 8.5
        N = 1;
    end
    if pose(2) == 0.5
        S = 1;
    end
    if pose(1) == 0.5
        W = 1;
    end
    if pose(1) == 3.5
        E = 1;
    end
end
if pose(3) == pi/2
    S = 0;
    if ranges(1) < 1
        E = 1;
    else
        E = 0;
    end
    if ranges(2) < 1
        N = 1;
    else
        N = 0;
    end
    if ranges(3) < 1
        W = 1;
    else
        W = 0;
    end
    if pose(2) == 8.5
        N = 1;
    end
    if pose(2) == 0.5
        S = 1;
    end
    if pose(1) == 0.5
        W = 1;
    end
    if pose(1) == 3.5
        E = 1;
    end
end
if pose(3) == pi
    E = 0;
    if ranges(1) < 1
        N = 1;
    else
        N = 0;
    end
    if ranges(2) < 1
        W = 1;
    else
        W = 0;
    end
    if ranges(3) < 1
        S = 1;
    else
        S = 0;
    end
    if pose(2) == 8.5
        N = 1;
    end
    if pose(2) == 0.5
        S = 1;
    end
    if pose(1) == 0.5
        W = 1;
    end
    if pose(1) == 3.5
        E = 1;
    end
end
if pose(3) == -pi/2
    N = 0;
    if ranges(1) < 1
        W = 1;
    else
        W = 0;
    end
    if ranges(2) < 1
        S = 1;
    else
        S = 0;
    end
    if ranges(3) < 1
        E = 1;
    else
        E = 0;
    end
    if pose(2) == 8.5
        N = 1;
    end
    if pose(2) == 0.5
        S = 1;
    end
    if pose(1) == 0.5
        W = 1;
    end
    if pose(1) == 3.5
        E = 1;
    end
end
field = [N,S,E,W];
str = num2str(field);
A = bin2dec(str);
end