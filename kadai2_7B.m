M=round(rand(1,10)*10);     %要素数10のベクトルMに0から10の乱数を代入
I=1;
while (I<11)&&(M(1,I)<10)   %Iが11より小さく，かつMのI番目の要素が10より小さい場合6行目までのループを実行する
        disp(strcat(num2str(I),'番目は ', num2str(M(1,I)),'です'));
        I=I+1;
end