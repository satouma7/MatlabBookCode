T=0:1/100:10*pi; 
R=5;
X=R*cos(T); Y=R*sin(T); %X��X���CY��Y���CT��Z���Ƃ��ăv���b�g
figure; plot(X,Y);
figure; plot3(X,Y,T);