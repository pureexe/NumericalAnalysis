function X = gaussian_elimination(A,B)    
    N = length(A);
    R = [A B];
    for i = 1:N
        [val,pos] = max(abs(R(i:N,i)));
        R([pos+i-1 i],:) = R([i pos+i-1],:);
        R(i,:) = R(i,:) / R(i,i);
        for j = i+1:N
            m = R(j,i)/R(i,i);
            R(j,:) = R(j,:) - (m*R(i,:));  
        end
    end
    % backward subsitution
    for i = N:-1:1
        for j = i-1:-1:1
            m = R(j,i)/R(i,i);
            R(j,:) = R(j,:) - (m*R(i,:));  
        end
    end
    X = R(:,N+1);
end

