T=0:1/100:10*pi; 
R=-T/2/pi+5;                %Rに5から0まで減少する，Tと同じ要素数の数列を代入
X=R.*cos(T); Y=R.*sin(T); 
figure; plot(X,Y);
figure; plot3(X,Y,T);
