Xmax=100;Tmax=100;
dt=0.1;d=2;dx=1;
E=zeros(Xmax,Xmax,Tmax);
E(41:60,41:60,1)=1;%E(1:20,41:60,1)=rand(20);
tic;
for T=1:Tmax-1
    E(:,:,T+1)=4*dt*d*del2(E(:,:,T))+E(:,:,T);
end
toc;
for T=1:Tmax
    imagesc(E(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.001);
end