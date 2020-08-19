dt=0.01;Tmax=30000;
L=zeros(1,Tmax);L(1)=1;%LT-HSC
S=zeros(1,Tmax);S(1)=0;%ST-HSC
M=zeros(1,Tmax);M(1)=0;%MPP
p1=0.02;p2=0.06;p3=4.01;
d1=0.01;d2=0.05;d3=4;
Lmax=5;Smax=5;Mmax=5;
for T=1:Tmax-1
    L(T+1)=L(T)+dt*(p1*L(T)*(1-L(T)/Lmax)-d1*L(T));
    S(T+1)=S(T)+dt*(d1*L(T)+p2*S(T)*(1-S(T)/Smax)-d2*S(T));
    M(T+1)=M(T)+dt*(d2*S(T)+p3*M(T)*(1-M(T)/Mmax)-d3*M(T));
end
X=1:Tmax;
plot(X,L,'k--',X,S,'g:',X,M,'m');   %L破線(黒)，S点線(緑)，M実線(紫)でプロット