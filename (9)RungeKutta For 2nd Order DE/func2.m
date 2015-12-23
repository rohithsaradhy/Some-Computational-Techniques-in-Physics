function [ out ] = func2( dx,x,y2,y1 )
%FUNC2 Summary of this function goes here
%   Detailed explanation goes here

k1=dx*(func_function(x,y2,y1));
k2=dx*(func_function(x+dx/2,y2+k1/2,y1));
k3=dx*(func_function(x+dx/2,y2+k2/2,y1));
k4=dx*(func_function(x+dx,y2+k3,y1));

out=y2+1/6*(k1+2*k2+2*k3+k4);
end

