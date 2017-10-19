function x = chebyshev(nodes,start,finish)
    k = 1:nodes;
    t = cos(((2*k-1)*pi)/(2*(nodes-1)+2));
    t = fliplr(t);
    x = ((finish - start)*t + start + finish) / 2
end

