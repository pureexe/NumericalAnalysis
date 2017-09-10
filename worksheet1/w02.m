% fixpoint implementation
format long;
fixpoint(@(x) (x-x^3-4*x^2+10))
fixpoint(@(x) ((10/x)-4*x)^(1/2))
fixpoint(@(x) (1/2)*(10-x^3)^(1/2))
fixpoint(@(x) (10/(4+x))^(1/2))

function x = fixpoint(expression)
    prev = 1;
    x = 0;
    count = 0;
    while(abs(prev - x) > 0.00000001)
        prev = x;
        x = expression(x);
        count = count+1;
        if count > 100
            break
        end
    end
end
