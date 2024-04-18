function path = getpath(iswalls,path)
m = find(~path, 1);
new = 0;
if isempty(m)
    return;
else
    while ~isempty(m)
        m = find(~path, 1);
        new = new + 1;
        for i = 1:9
            for j = 1:4
                if path(i,j) == new
                    walld = decode(iswalls,j,i);
                    if walld(1) == 0
                        if path(i+1,j) == 0
                            path(i+1,j) = new + 1;
                        end
                    end
                    if walld(2) == 0
                        if path(i-1,j) == 0
                            path(i-1,j) = new + 1;
                        end
                    end
                    if walld(3) == 0
                        if path(i,j+1) == 0
                            path(i,j+1) = new + 1;
                        end
                    end
                    if walld(4) == 0
                        if path(i,j-1) == 0
                            path(i,j-1) = new + 1;
                        end
                    end
                end
            end
        end
    end
end
end