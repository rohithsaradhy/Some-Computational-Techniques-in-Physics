function inverse_matrix = inverse_function(mat)

[m,n]=size(mat);
%defining a identity matrix
I=eye([m n]);
mat2=mat




mat
I
%Diagonalising it
for l=1:m
    %Arranging the highest Col element of the row for pivoting
%Sorting Algorithm

for e=l:m
    for a=l:m
        if a~=m   
            if mat(a,l)<mat(a+1,l);
                for b=l:m
    
                d=mat(a,b);
                c=I(a,b);
            

                mat(a,b)=mat(a+1,b);
                mat(a+1,b)=d;
                I(a,b)=I(a+1,b);
                I(a+1,b)=c;

            
                end
            end
        end
    end   
end


    
 % Actual Diagonalization   
    for i=1:m
        if i== l
            k=0;
        else
            k=mat(i,l)/mat(l,l);
            
        end
        
        
        for j=1:m
         if i== l
        else
            mat(i,j)=mat(i,j)-k*mat(l,j);
            I(i,j)=I(i,j)-k*I(l,j);
        end
        end
    
  
    end
    
end

% Making mat Identity 
for i=1:m;
    d=mat(i,i);
    for j=1:m
        I(i,j)=I(i,j)/d;
        mat(i,j)=mat(i,j)/d;
    end
    
   
end

inverse_matrix = I;