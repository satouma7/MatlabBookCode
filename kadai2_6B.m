A=ceil(3*rand+2);
B=fix(4*rand+3);
M=round(10*rand(A,B));
disp(strcat(num2str(A),'行',num2str(B),'列の行列'));
for i=1:A
    for j=1:B
        disp(strcat(num2str(i),'行',num2str(j),'列は', num2str(M(i,j)),'です'));
    end
end
