T=0:1/100:10*pi; 
R=5;
X=R*cos(T); Y=R*sin(T); 
figure; plot(X,Y,T);
figure; plot3(X,Y,T);
