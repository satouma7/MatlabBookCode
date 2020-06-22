T=0:1/100:10*pi; 
R=5.5-rand(1,3142);
X=R.*cos(T); Y=R.*sin(T); 
figure; plot(X,Y);
figure; plot3(X,Y,T);
