
%Programme Written by Rohith Saradhy
%reading from excel file named Matrix in main folder
mat=xlsread('Matrix');
mat2=mat;

[m,n]=size(mat);
%defining a identity matrix
I=eye([m n]);

disp(mat);
%Here you can arbitary constant matrix
I=[1;1;1];
 % creating an upper triangular matrix
for l=1:m
    
        % Arranging the highest Col element of the row for pivoting
% Sorting Algorithm

for e=l:m
    for a=l:m
        if a~=m   
            if mat(a,l)<mat(a+1,l);
                for b=l:m
    
                d=mat(a,b);
                
            

                mat(a,b)=mat(a+1,b);
                mat(a+1,b)=d;
                

            
                end
                c=I(a,1);
                I(a,1)=I(a+1,1);
                I(a+1,1)=c;
            end
        end
    end   
end
for i=l:m
    if i+1<=m
          k=mat(i+1,l)/mat(l,l);
          I(i+1,1)=I(i+1,1)-k*I(l,1);
    end
for j=1:n
    
    if i+1<=m
        mat(i+1,j)=mat(i+1,j)-k*mat(l,j);       
         
    end
     
end

end

end
mat
I

% backsubstitution
for i=m:-1:1
    for l=m:-1:i+1
        if i~=m
        I(i)=I(i)-mat(i,l)*I(l);
        end
    end
    
 I(i) = I(i)/mat(i,i);
         
        
    
end



answer =I;
I=[1;1;1];

%Solutions being displayed

disp('The Coeffcient Matrix that you entered');
disp(mat2);
disp('From the Inverse times the constant term matrix');
disp(inverse_function(mat2)*I);
disp('From the Backsubstitution method');
disp(answer);


    
   






