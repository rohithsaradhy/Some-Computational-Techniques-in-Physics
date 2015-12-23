5%doing for:
%du/dx=u^2+x+2
%f(u,x)=u^2+x+2
%Actual Solution:
%x=0 u=-1/2

%setting the range
initial=0;
final=1;
dx=.01;
n=abs(final-initial)/dx;

 i=1;
 %x-value, first order y, second order y, 3rd order y, 4th order y
 dataset=zeros(n,5);
 
 dataset(i,2)=-1/2;
 for x=initial:dx:final-dx
    i=i+1;
    
    dataset(1,1)=0;
    dataset(1,2)=-.5;
    dataset(1,3)=-.5;
    dataset(1,4)=-.5;
    dataset(1,5)=-.5;
    dataset(i,1)=x+dx;
%1st Order
u=dataset(i-1,2);
u1=u+dx*(func_function(x,u));
dataset(i,2)=u1;


%2nd order
u=dataset(i-1,3);
k1= dx*(func_function(x,u));
k2=dx*(func_function(x+dx,u+k1));
% u(x+dx)
%For Second Order
u2=u+.5*(k1+k2)
dataset(i,3)=u2;

%For third Order
u=dataset(i-1,4);
k1=dx*(func_function(x,u));
k2=dx*(func_function(x+dx/2,u+k1/2));
k3=dx*(func_function(x+dx,u-k1+2*k2));

u3=u+1/6*(k1+4*k2+k3)
dataset(i,4)=u3;

%For Fourth Order
u=dataset(i-1,5);
k1=dx*(func_function(x,u));
k2=dx*(func_function(x+dx/2,u+k1/2));
k3=dx*(func_function(x+dx/2,u+k2/2));
k4=dx*(func_function(x+dx,u+k3));

u4=u+1/6*(k1+2*k2+2*k3+k4)
dataset(i,5)=u4;
end
figure;

%data 1 is first order, 2 is second order,3 is third, and 4 is fourth.
plot(dataset(:,1),dataset(:,2),dataset(:,1),dataset(:,3),dataset(:,1),dataset(:,4),dataset(:,1),dataset(:,5));