Z=zeros(100,100);
for X=1:100
    for Y=1:100
        if X>=Y         %もしX>=Yであれば，
            Z(Y,X)=1;   % ZのY行X列に1を代入
        end             %4行目のif文はここまで
    end
end
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;