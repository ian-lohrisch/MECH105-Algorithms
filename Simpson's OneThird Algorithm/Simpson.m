function [I] = Simpson(x, y)

[z,f] = size(x);

if length(x) ~= length(y)
    error('U are stupid');
else
    check = linspace(x(1),x(length(x)),length(x));
    for i = 1:length(x)
        if check(i) ~= x(i)
            error('U are stupid');
        end
    end
    
end

h = (x(2)-x(1));

if rem(length(x), 2) == 0 % if even # of points   
    warning('Trap rule will be used')
%    h = (x(length(x)-1)-x(1))/(length(x)-2);
    if x == 2
        I = (x(2)-x(1))*((y(2)+y(1))/2);
    else
        s = (h/2)*((y(1)+4*(sum(y(2:length(x)-2)))+y(length(x)-1)));
        t = (x(length(x))-x(length(x)-1))*(y(length(x))+y(length(x)-1))/2;
        I = s + t;
    end
else
%    h = (x(length(x))-x(1))/(length(x)-1);
    I = (h/3)*(y(1)+4*sum(y(2:length(x)-1))+y(length(x)));
end

 

end