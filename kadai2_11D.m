Z=zeros(100,100,100);
for T=1:100
    for X=1:100
        for Y=1:100
            Z(Y,X,T)=sin(pi/100*X+2*pi/100*T)+2*cos(2*pi/100*Y+3*pi/100*T);
        end
    end
end
mov=VideoWriter('kadai2_11D', 'MPEG-4');    %���[�r�[�t�@�C����ۑ����邽�߂̃I�u�W�F�N�gmov���쐬
open(mov);  %mov�̓��e�Ɋ�Â����[�r�[�t�@�C�����J��
for T=1:100
    imagesc(Z(:,:,T),[-3 3]);set(gca,'YDir','normal');colorbar;
    writeVideo(mov, getframe(gcf)); %mov�̓��e�Ɋ�Â����[�r�[��1�t���[����������
    pause(0.01);
end
close(mov); %mov�Ŏw�肵�����[�r�[�t�@�C�������