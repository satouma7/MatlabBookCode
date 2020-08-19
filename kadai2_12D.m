Z=zeros(100,100,100);
for T=1:100
    for X=50:100
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+2*pi/100*T+pi/2;    %atan(W/V)�Ƀ�/2��2��/100*T�������ă�(Theta)���v�Z
            if Theta>2*pi                       %����Theta��2�΂����傫��������C
                Theta=Theta-2*pi;               % Theta����2�Έ���
            end                                 %8�s�ڂ�if���͂����܂�
            if (R>30)&&(R<50)
                Z(Y,X,T)=Theta*100/2/pi;
            end
        end
    end
    for X=1:49
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+2*pi/100*T+3*pi/2;  %atan(W/V)��3��/2��2��/100*T�������ă�(Theta)���v�Z
            if Theta>2*pi                       %����Theta��2�΂����傫��������C
                Theta=Theta-2*pi;               %Theta����2�Έ���
            end                                 %21�s�ڂ�if���͂����܂�
            if (R>30)&&(R<50)
                Z(Y,X,T)=Theta*100/2/pi;
            end
        end
    end
end
mov=VideoWriter('kadai2_12D', 'MPEG-4');    %����ۑ��p
open(mov);  %����ۑ��p
for T=1:100
    imagesc(Z(:,:,T),[0 100]);set(gca,'YDir','normal');colorbar;
    writeVideo(mov, getframe(gcf)); %����ۑ��p
    pause(0.001);
end
close(mov); %����ۑ��p