A=ceil(3*rand+2);
B=fix(4*rand+3);
M=round(10*rand(A,B));
disp(strcat(num2str(A),'�s',num2str(B),'��̍s��'));
for i=1:A
    for j=1:B
        disp(strcat(num2str(i),'�s',num2str(j),'���', num2str(M(i,j)),'�ł�'));
    end
end