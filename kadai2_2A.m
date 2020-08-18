T=0:1/100:2*pi;         %Tに刻み幅0.01，0から2πの範囲の数列を代入
R=5;                    %Rに5を代入
X=R*cos(T); Y=R*sin(T); %XにR cosT，YにR sinTを代入
plot(X,Y);              %XをX軸，YをY軸としてプロット