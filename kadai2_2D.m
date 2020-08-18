T=0:1/100:10*pi; 
R=-T/2/pi+5;                %R‚É5‚©‚ç0‚Ü‚ÅŒ¸­‚·‚éCT‚Æ“¯‚¶—v‘f”‚Ì”—ñ‚ğ‘ã“ü
X=R.*cos(T); Y=R.*sin(T); 
figure; plot(X,Y);
figure; plot3(X,Y,T);
