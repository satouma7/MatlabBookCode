Z=zeros(100,100);   %100�s100��̍s��Z��0����
for X=1:100         %X��1����100�܂ő���������
    for Y=1:100     %Y��1����100�܂ő���������
        Z(Y,X)=((X-50)/10)^3+((Y-50)/4)^2;  %Z��Y�sX���((X-50)/10)^3+((Y-50)/4)^2�̒l����
    end             %3�s�ڂ܂Ŗ߂�
end                 %2�s�ڂ܂Ŗ߂�
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;    %�V�����E�B���h�E��Z�̓��e���Q�����\��
figure;surface(Z);colorbar; %�V�����E�B���h�E��Z�̓��e��3�����\��