%First Solving for y2
%for equation 
%initial values
dx=0.1;
initial=0;
final=1;
n=abs(final-initial)/dx;

i=1;


for x=initial+dx:dx:final
  
  i=i+1;
  i
y2(1)=2;
y1(1)=3;
t(1)=0;
t(i)=x;
x=x-dx;

y2(i)=func2(dx,x,y2(i-1),y1(i-1));


%finding the y1 from y2
k1=dx*y2(i-1);
k2=dx*func2(dx/2,x,y2(i-1),y1(i-1));
k3=dx*func2(dx/2,x,y2(i-1),y1(i-1));
k4=dx*y2(i);

y1(i)=y1(i-1)+1/6*(k1+2*k2+2*k3+k4);

end




figure;
plot(t,y1);
