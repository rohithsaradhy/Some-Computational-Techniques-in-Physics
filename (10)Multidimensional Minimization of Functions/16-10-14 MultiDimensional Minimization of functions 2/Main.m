%Let the function be f(x,y)=(x-1)^3 +(y-2)^2 +3
%setting c to be 0.5
% with starting point to be -1,-1
% finding the value of gamma r
% dfx is grad x-comp of f(x,y)
% dfy is grad y-comp of f(x,y) 		
% fx_func is the function
x0=10;
y0=10;
c=.5;
%Finding the value of the gamma r
for r=0:0.01:10

x=x0-r*dfx(x0,y0);
y=y0-r*dfy(x0,y0);
r=.05;

	if fx_func(x,y) < fx_func(x0,y0)-c*r*(dfx(x0,y0)^2+dfy(x0,y0)^2)
		r
		fx_func(x,y)-fx_func(x0,y0)-c*r*(dfx(x0,y0)^2+dfy(x0,y0)^2)
		break
	end
end

%if the difference between the points are less than .00001 then it will stop

for g=0:1:100000
x=x0-r*dfx(x0,y0);
y=y0-r*dfy(x0,y0);
	if abs(fx_func(x,y)-fx_func(x0,y0))< 0.00001
		break
	end
x0=x;
y0=y;

end
g
x
y
