A = 1:15;
for i = 1:floor(length(A)/2)
    temp = A(i);
    A(i) = A(end-i+1);
    A(end-i+1) = temp;
end