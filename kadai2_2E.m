T=0:1/100:10*pi; 
R=-T/2/pi+5+rand(1,3142)-0.5;   %Rに+/-0.5の範囲で揺らぎつつ5から0まで減少する要素数3142の数列を代入
X=R.*cos(T); Y=R.*sin(T);
figure;plot(X,Y);
figure;plot3(X,Y,T);
