Z=zeros(100,100);               %100�s100��̍s��Z�ɂO����
    for Y=1:100                 %X��1����100�܂ő���������
        for X=1:100             %Y��1����100�܂ő���������
            V=X-50;W=Y-50;      %X��, Y��������50���炵��V��W���v�Z
            R=sqrt(V*V+W*W);    %���S����̋���R(���a)���v�Z
            Theta=atan(W/V);    %V��W�����(Theta)���v�Z
            if (R>30)&&(R<50)   %����R��30����50�̊Ԃł���΁C
                Z(Y,X)=Theta*100/2/pi;  %Theta����F�̒l���v�Z��Z(Y,X)���
            end                 %7�s�ڂ�if���͂����܂�
        end                     %3�s�ڂ܂Ŗ߂�
    end                         %2�s�ڂ܂Ŗ߂�
imagesc(Z);set(gca,'YDir','normal');colorbar;