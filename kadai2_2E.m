T=0:1/100:10*pi; 
R=-T/2/pi+5+rand(1,3142)-0.5;%R=-T/2/pi+4.5+rand(1,size(T,2));    
X=R.*cos(T); Y=R.*sin(T);
figure;plot(X,Y);
figure;plot3(X,Y,T);