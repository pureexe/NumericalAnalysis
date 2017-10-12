% find node by chevbyshev method
% @param Integer nodesCount, Double intervalBegin, Double intervalEnd
function nodes = chebyshev_nodes(nodesCount,begin,finish)
    N = nodesCount - 1;
    k = 1:nodesCount;    
    t = cos(((2*k-1)*pi)/(2*N+2));
    t = fliplr(t);
    nodes = ((finish-begin)*t+begin+finish) / 2;
end