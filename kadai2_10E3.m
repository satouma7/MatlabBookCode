Z=zeros(100,100);
for X=1:10
    for Y=1:20      %Y��1����20�܂ő���������
        Z(Y,X)=X-Y; %Z��Y�sX���X-Y�̒l����	
    end
end
Z=repmat(Z(1:20,1:10),5,10);    %Z��1~20�s�C1~10��̓��e���s������10��C�������10��J��Ԃ������̂�Z�ɑ��
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;