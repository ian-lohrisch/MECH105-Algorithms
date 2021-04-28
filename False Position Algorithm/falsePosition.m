function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

%error handler
if func(xl)*func(xu) > 0
    error('You are stupid');
else

% set defaults
if nargin < 6
    if nargin < 5
        maxit = 200;
        es = .0001;
    else
        maxit = 200;
end


%loop through iterations until approx error falls below stopping critereon
ea = 100;
iter = -1;

while ea > es && iter < maxit
    
    % calculate f(xu) and f(xl)
    f_xu = func(xu);
    f_xl = func(xl);

    %calculate root
    root = xu - (func(xu)*(xl-xu))/(func(xl)-func(xu));
    old_xl = xl;
    old_xu = xu;
    
    if func(root)*f_xl > 0
        xl = root;
        ea = abs(100*(xl-old_xl)/xl);
    else
        xu = root;
        ea = abs(100*(xu-old_xu)/xu);
    end
    
    iter = iter + 1;
    fx = func(root);
end
end

end