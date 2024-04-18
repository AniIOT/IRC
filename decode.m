function walld = decode(iswall,x,y)
if iswall(y,x) == 0
    walld = [0 0 0 0];
elseif iswall(y,x) == 1
    walld = [0 0 0 1];
elseif iswall(y,x) == 2
    walld = [0 0 1 0];
elseif iswall(y,x) == 3
    walld = [0 0 1 1];
elseif iswall(y,x) == 4
    walld = [0 1 0 0];
elseif iswall(y,x) == 5
    walld = [0 1 0 1];
elseif iswall(y,x) == 6
    walld = [0 1 1 0];
elseif iswall(y,x) == 7
    walld = [0 1 1 1];
elseif iswall(y,x) == 8
    walld = [1 0 0 0];
elseif iswall(y,x) == 9
    walld = [1 0 0 1];
elseif iswall(y,x) == 10
    walld = [1 0 1 0];
elseif iswall(y,x) == 11
    walld = [1 0 1 1];
elseif iswall(y,x) == 12
    walld = [1 1 0 0];
elseif iswall(y,x) == 13
    walld = [1 1 0 1];
elseif iswall(y,x) == 14
    walld = [1 1 1 0];
elseif iswall(y,x) == 15
    walld = [1 1 1 1];
else
    walld = [0 0 0 0];
end
end