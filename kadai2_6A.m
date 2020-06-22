M=round(rand(4,5)*10);
for I=1:4
    for J=1:5
        disp(strcat(num2str(I),'行',num2str(J),'列は', num2str(M(I,J)),'です'));
    end
end
