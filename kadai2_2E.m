T=0:1/100:10*pi; 
R=-T/2/pi+5+rand(1,3142)-0.5;   %R��+/-0.5�͈̔͂ŗh�炬��5����0�܂Ō�������v�f��3142�̐������
X=R.*cos(T); Y=R.*sin(T);
figure;plot(X,Y);
figure;plot3(X,Y,T);
