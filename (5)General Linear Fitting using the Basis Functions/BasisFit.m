
%Programme Written by Rohith Saradhy
%reading from excel file named Matrix in main folder
mat=xlsread('Matrix');

[m,n]=size(mat);
%defining a identity matrix
I=eye([m n]);
disp('X Y and delta Y');

mat

DesMat= zeros(m,2);
B= zeros(m,1);
for i=1:m
   DesMat(i,1) =  (sin(mat(i,1)))/mat(i,3);
   DesMat(i,2) =  cos(mat(i,1))/mat(i,3);
   B(i,1)=mat(i,2)/mat(i,3);
   
end


tDesMat = zeros(2,m);
%calculating the transpose.
for i=1:m
    for j=1:2
        
        tDesMat(j,i)=DesMat(i,j);
        
    end
end
tDesMat

alpha = tDesMat*DesMat;
beta = tDesMat*B;
 disp('A and B are');
disp(inverse_function(alpha)*beta);
a=inverse_function(alpha)*beta;
disp('respectively');
figure;
x=linspace(0,10);
y = a(1,1)*sin(x) + a(2,1)*cos(x);
z = -9.22*sin(x)+4.82*cos(x);

plot(x,y,'red');
hold on;
plot(mat(:,1),mat(:,2));
hold on;
errorbar(mat(:,1),mat(:,2),mat(:,3));
% error diagonal of inverse alpha
err=inv(alpha);
eA=err(1,1)
eB = err(2,2)








