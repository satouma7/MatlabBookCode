Tmax=10000;dt=0.02;
V=zeros(1,Tmax);W=zeros(1,Tmax);
a=0.7;b=0.8;c=10;I=1;
for T=1:Tmax-1
        V(T+1)=V(T)+dt*(  c*( - (V(T).^3)/3+ V(T) -W(T) + I ) );
        W(T+1)=W(T)+dt*(V(T)-b*W(T)+a)/c;
end
plot(1:Tmax,V,'r',1:Tmax,W,'k--');
