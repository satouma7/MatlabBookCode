Z=zeros(100,100);
for X=1:10
    for Y=1:100
        Z(Y,X)=10*X-Y;
    end
end
Z=repmat(Z(1:100,1:10),1,10);   %Zの1から10列の内容を列方向に10回繰り返したものをZに代入
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;