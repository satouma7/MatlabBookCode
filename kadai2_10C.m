Z=zeros(100,100);
for X=1:100
    for Y=1:100
        if X>=Y         %����X>=Y�ł���΁C
            Z(Y,X)=1;   % Z��Y�sX���1����
        end             %4�s�ڂ�if���͂����܂�
    end
end
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;