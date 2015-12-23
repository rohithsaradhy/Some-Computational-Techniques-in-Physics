
%Programme Written by Rohith Saradhy
%reading from excel file named Matrix in main folder
% For the third part of the question just change and 
function 

[m,n]=size(mat);

disp('First row is X, second is Y and Third is Sigma Y');

mat 
disp('withouts weights');
%x^2 xy
solMat = zeros(m,2);
for i=1:m
    solMat(i,1)=mat(i,1)*mat(i,1);
    solMat(i,2)=mat(i,1)*mat(i,2);
end
sumx=0;
sumy=0;
sumx2=0;
sumxy=0;

for i=1:m
sumx= sumx+mat(i,1);
sumy=sumy+mat(i,2);
sumx2=sumx2+solMat(i,1);
sumxy=sumxy+solMat(i,2);

end


delta=(m*sumx2 - sumx*sumx)
slope = (m*sumxy-sumx*sumy)/delta
intercept = (sumx2*sumy-sumx*sumxy)/delta
ErrorinSlope=sqrt(m/delta)
ErrorinIntercept=sqrt(sumx2/delta)
z=linspace(0,5);
c=slope*z+intercept;
disp('Now for with weights is ');
solMat = zeros(m,5);
%w,wx,wx2,wy,wxy

for i=1:m
   solMat(i,1)=1/(mat(i,3)^2);
   solMat(i,2)=mat(i,1)*solMat(i,1);
   solMat(i,3)=mat(i,1)^2*solMat(i,1);
   solMat(i,4)=mat(i,2)*solMat(i,1);
   solMat(i,5)=mat(i,1)*solMat(i,1)*mat(i,2);
   
end


sw=0;
swx=0;
swx2=0;
swy=0;
swxy=0;

for i=1:m
    
    sw=sw+solMat(i,1);
    swx=swx+solMat(i,2);
    swx2=swx2+solMat(i,3);
    swy=swy+solMat(i,4);
    swxy=swxy+solMat(i,5);
    
end

delta=sw*swx2-swx^2
intercept=(swx2*swy-swx*swxy)/delta
Slope=(sw*swxy-swx*swy)/delta
ErrorInIntercept=sqrt(swx2/delta)
ErrorInSlope=sqrt(sw/delta)


disp('Now we will calculate Correlation Coefficient')
solMat = zeros(m,3);
mean=sumx/m;

%x-x,y-y,(x-x)(y-y)
for i=1:m
    solMat(i,1)=(mat(i,1)- mean)^2;
    solMat(i,2)=(mat(i,2)- mean)^2;
    solMat(i,3)=solMat(i,1)*solMat(i,2);
    
end
5
sxx=0;
syy=0;
sxxyy=0;

for i=1:m
    sxx=sxx+solMat(i,1);
    syy=syy+solMat(i,2);
    sxxyy=sxxyy+solMat(i,3);
end

correlation = sxxyy/sqrt(sxx*syy)
figure
x=linspace(0,5);
y=Slope*x+intercept;

errorbar(mat(:,1),mat(:,2),mat(:,3));
hold on;
plot(x,y,z,c);
hold on;
scatter(mat(:,1),mat(:,2),'*');



