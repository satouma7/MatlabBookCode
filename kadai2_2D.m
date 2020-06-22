T=0:pi/100:10*pi; 
R=-T/2/pi+5; 
X=R.*cos(T); Y=R.*sin(T); 
figure; plot(X,Y);
figure; plot3(X,Y,T);
