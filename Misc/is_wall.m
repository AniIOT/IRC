 N,S,E,W = 0;
function A = iswall(ranges,visited,pose)
if visited(pose(2)+0.5,pose(1)+0.5) == 0
%     if pose(3) == 0
%     end
%     if pose(3) == pi/2
%     end
%     if pose(3) == pi
%     end
%     if pose(3) == -pi/2
%     end
% else
    if pose(3) == 0
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
    end
    if pose(3) == pi/2
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
    end
    if pose(3) == pi
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
    end
    if pose(3) == -pi/2
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
    end
end
field = [N,S,E,W];
A = bi2de(field);
end