function result = gaussian_elimination(A,B)
    rowCount = length(A);
    matrix = [A,B];
    %make triagle matrix
    for i = 1:rowCount
        column = abs(matrix(i:rowCount,i));
        [val,pos] = max(abs(column));
        rowTemp = matrix(i,:);
        matrix(i,:) = matrix(i+pos-1,:);
        matrix(i+pos-1,:) = rowTemp;
        if(matrix(i,i) == 0)
            disp("A is singular matrix\n")
        end
        matrix(i,:) = matrix(i,:) / matrix(i,i);
        for j = i+1:rowCount
            m = matrix(j,i) / matrix(i,i);
            matrix(j,:) = matrix(j,:) - (m*matrix(i,:));
        end
    end
    %disp(matrix);
    for i = rowCount:-1:1
       for j = i-1:-1:1;
           matrix(j,:) = matrix(j,:) - (matrix(i,:)*(matrix(j,i)/matrix(i,i)));
       end
    end
    disp(matrix);
    result = matrix(:,rowCount+1);
end