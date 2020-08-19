Z=zeros(100,100);
for X=1:10
    for Y=1:20      %Yを1から20まで増加させる
        Z(Y,X)=X-Y; %ZのY行X列にX-Yの値を代入	
    end
end
Z=repmat(Z(1:20,1:10),5,10);    %Zの1~20行，1~10列の内容を行方向に10回，列方向に10回繰り返したものをZに代入
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;