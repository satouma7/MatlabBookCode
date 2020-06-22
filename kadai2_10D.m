Z=zeros(100,100);
for X=1:50
    for Y=1:50
        Z(Y,X)=X+Y;
    end
end
for X=51:100
    for Y=1:50
        Z(Y,X)=Y-X+100;
    end
end
for X=1:50
    for Y=51:100
        Z(Y,X)=X-Y+100;
    end
end
for X=51:100
    for Y=51:100
        Z(Y,X)=200-(X+Y);
    end
end
imagesc(Z);set(gca,'YDir','normal');colorbar;