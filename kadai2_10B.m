Z=zeros(100,100);   %100�s100��̍s��Z��0����
for X=1:100         %X��1����100�܂ő���������
    for Y=1:100     %Y��1����100�܂ő���������
        Z(Y,X)=X-Y; %Z��Y�sX���X-Y�̒l����
    end             %3�s�ڂ܂Ŗ߂�
end                 %2�s�ڂ܂Ŗ߂�
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;    %�V�����E�B���h�E��Z�̓��e���Q�����\��