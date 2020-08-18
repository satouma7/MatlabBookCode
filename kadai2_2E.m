T=0:1/100:10*pi; 
R=-T/2/pi+5+rand(1,3142)-0.5;   %R‚É+/-0.5‚Ì”ÍˆÍ‚Å—h‚ç‚¬‚Â‚Â5‚©‚ç0‚Ü‚ÅŒ¸­‚·‚é—v‘f”3142‚Ì”—ñ‚ğ‘ã“ü
X=R.*cos(T); Y=R.*sin(T);
figure;plot(X,Y);
figure;plot3(X,Y,T);
