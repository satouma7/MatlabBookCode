M=round(rand(4,5)*10);
for I=1:4
    for J=1:5
        disp(strcat(num2str(I),'s',num2str(J),'—ñ‚Í', num2str(M(I,J)),'‚Å‚·'));
        %disp([num2str(I),'s',num2str(J),'—ñ‚Í', num2str(M(I,J)),'‚Å‚·']);
    end
end