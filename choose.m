function [dir,flag] = choose(walls)
z = find(~walls);
[~,n] = size(z);
if n == 0
    dir = "rev";
    flag = 1;
elseif n == 1
    flag = 0;
    if z == 1
        dir = 'r';
    elseif z == 2
        dir = 'f';
    else
        dir = 'l';
    end   
elseif n == 2
    flag = 0;
    while true
        z = randi(3);
        if walls(z) == 0
            break;
        else
            continue;
        end
    end
    if z == 1
        dir = 'r';
    elseif z == 2
        dir = 'f';
    else
        dir = 'l';
    end 
elseif n == 3
    flag = 0;
    z = randi(3);
    if z == 1
        dir = 'r';
    elseif z == 2
        dir = 'f';
    else
        dir = 'l';
    end 
end
end