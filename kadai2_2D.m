T=0:1/100:10*pi; 
R=-T/2/pi+5;                %R��5����0�܂Ō�������CT�Ɠ����v�f���̐������
X=R.*cos(T); Y=R.*sin(T); 
figure; plot(X,Y);
figure; plot3(X,Y,T);
