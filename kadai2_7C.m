M=round(rand(1,10)*10);
for I=1:10
    if M(1,I)==10
        break
    end
    disp(strcat(num2str(I),'番目は ', num2str(M(1,I)),'です'));
end
