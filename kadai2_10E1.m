Z=zeros(100,100);
for X=1:10              %X��1����10�܂ő���������
    for Y=1:100         %Y��1����100�܂ő���������
        Z(Y,X)=10*X-Y;  %Z��Y�sX���10*X-Y�̒l����
    end                 %3�s�ڂ܂Ŗ߂�
end                     %2�s�ڂ܂Ŗ߂�
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;