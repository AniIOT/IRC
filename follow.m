function go = follow(path,pose,iswalls)
wallf = decode(iswalls,pose(1)+0.5,pose(2)+0.5);
s = find(~wallf);
[~,l] = size(s);
if l == 1
    if s == 1
        go = 'up';
    elseif s == 2
        go = 'dw';
    elseif s == 3
        go = 'rt';
    else
        go = 'lt';
    end
else
    comp = [100,100,100,100];
    for i = 1:l
        if s(i) == 1
            comp(1) = path(pose(2)+1.5,pose(1)+0.5);
        elseif s(i) == 2
            comp(2) = path(pose(2)-0.5,pose(1)+0.5);
        elseif s(i) == 3
            comp(3) = path(pose(2)+0.5,pose(1)+1.5);
        elseif s(i) == 4
            comp(4) = path(pose(2)+0.5,pose(1)-0.5);
        end
    end
    st = sort(comp);
    for i = 1:4
        if st(1) == comp(i)
            loc = i;
            disp(loc);
        end
    end
    if loc == 1
        go = 'up';
    elseif loc == 2
        go = 'dw';
    elseif loc == 3
        go = 'rt';
    else
        go = 'lt';
    end
    disp(go);
end
end