M=round(rand(1,10)*10);
I=1;
while (I<11)&&(M(1,I)<10)
        disp(strcat(num2str(I),'番目は ', num2str(M(1,I)),'です'));
        I=I+1;
end
