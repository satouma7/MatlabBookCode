T=0:1/100:10*pi; 
R=5.5-rand(1,3142);         %R�ɗv�f��3142�C4.5����5.5�͈̗̔͂��������
X=R.*cos(T); Y=R.*sin(T);   %X��R cosT�CY��R sinT����
figure; plot(X,Y);
figure; plot3(X,Y,T);
