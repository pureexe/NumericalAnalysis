clear all
clc
A=[2.1756 4.0231 -2.1732 5.1967;-4.0231 6.0000 0 1.1973;...
    -1.0000 -5.2107 1.1111 0;6.0235 7.0000 0 -4.1561];
B=[17.102 -6.1593 3.0004 0.0000]';
N=length(B); X=zeros(N,1);C=zeros(1,N+1);
AB=[A B];
for p=1:N-1
    [d,j]=max(abs(AB(p:N,p)));
    C=AB(p,:);
    AB(p,:)=AB(p+j-1,:);
    AB(p+j-1,:)=C;
    if AB(p,p)==0
        disp('A singular matrix')
        break
    end
    for k=p+1:N
        m=AB(k,p)/AB(p,p);
        AB(k,p:N+1)=AB(k,p:N+1)-m*AB(p,p:N+1);
    end
end
%============Back Substitution==========
U=AB(:,1:N);BB=AB(:,N+1);
X(N)=BB(N)/U(N,N);
for r=N-1:-1:1
    X(r)=(BB(r)-U(r,r+1:N)*X(r+1:N))/U(r,r);
end







