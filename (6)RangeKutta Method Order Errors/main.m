%let lambda =1 and beta =1

x=0;
dx=.2;
c=1;
%actual function


initial=.01;
final=.1;
range=.01;
n=abs(final-initial)/range;

err1=zeros(n,2);
err2=zeros(n,2);
err3=zeros(n,2);
err4=zeros(n,2);
 i=0;
for dx=initial:range:final
    Uac=-(2+x+dx)+c*exp(x+dx);
     u=-(2+x)+c*exp(x);
    i=i+1;
    err1(i,1)=dx;
    err2(i,1)=dx;
    err3(i,1)=dx;
    err4(i,1)=dx;
%1st Order
u1=u+dx*(func_function(x,u));
err1(i,2)=u1-Uac;
%2nd order
k1= dx*(func_function(x,u));
k2=dx*(func_function(x+dx,u+k1));
% u(x+dx)
%For Second Order
u2=u+.5*(k1+k2)
err2(i,2)=u2-Uac;
%For third Order
k1=dx*(func_function(x,u));
k2=dx*(func_function(x+dx/2,u+k1/2));
k3=dx*(func_function(x+dx,u-k1+2*k2));

u3=u+1/6*(k1+4*k2+k3)
err3(i,2)=u3-Uac;
%For Fourth Order
k1=dx*(func_function(x,u));
k2=dx*(func_function(x+dx/2,u+k1/2));
k3=dx*(func_function(x+dx/2,u+k2/2));
k4=dx*(func_function(x+dx,u+k3));

u4=u+1/6*(k1+2*k2+2*k3+k4)
err4(i,2)=u4-Uac;
end
figure;
plot(err2(:,1),err1(:,2),err2(:,1),err2(:,2),err2(:,1),err3(:,2),err2(:,1),err4(:,2));
