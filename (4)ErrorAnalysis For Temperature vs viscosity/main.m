
%Programme Written by Rohith Saradhy
%reading from excel file named Matrix in main folder
mat=xlsread('Matrix');

[m,n]=size(mat);
% eta T  & delta 1/T is given
mat
% getting 1/T and log eta
 for i=1:m
     mat(i,2)=1/mat(i,2);
     mat(i,1)= log(mat(i,1));
     mat(i,3)=(mat(i,2)^2)*mat(i,3);
     
 end
 a=sum(mat(:,3))/m;
for i=1:m
    mat(i,3)=a;
end

 mat
% calling the fuction we created earlier.

function_LinearFit(mat);
