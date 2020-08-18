T=0:1/100:10*pi; 
R=5.5-rand(1,3142);         %Rに要素数3142，4.5から5.5の範囲の乱数列を代入
X=R.*cos(T); Y=R.*sin(T);   %XにR cosT，YにR sinTを代入
figure; plot(X,Y);
figure; plot3(X,Y,T);
