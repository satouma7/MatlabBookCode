Z=zeros(100,100);
for X=1:10
    for Y=1:100
        Z(Y,X)=10*X-Y;
    end
end
Z=repmat(Z(1:100,1:10),1,10);   %Z��1����10��̓��e��������10��J��Ԃ������̂�Z�ɑ��
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;