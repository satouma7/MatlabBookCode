Y=zeros(100,100);
X=1:100;
for T=1:100
    Y(:,T)=sin(4*pi/100*X+2*pi/100*T);
end
for T=1:100
    plot(X,Y(:,T));
    pause(0.1);
end