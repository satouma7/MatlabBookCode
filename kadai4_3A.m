Xmax=100;Tmax=100;
dt=0.1;d=1;dx=1;
E=zeros(Xmax,Xmax,Tmax);
E(41:60,41:60,1)=1;
for T=1:Tmax
    for X=2:Xmax-1
        for Y=2:Xmax-1
            E(Y,X,T+1)=dt*(d/dx/dx*(E(Y,X+1,T)+E(Y,X-1,T)+E(Y+1,X,T)+E(Y-1,X,T)-4*E(Y,X,T)))+E(Y,X,T);
        end
    end   
end
for T=1:Tmax
    imagesc(E(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.001);
end