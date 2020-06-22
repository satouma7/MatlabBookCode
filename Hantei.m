function [ R ] = Hantei( A,B )
    switch A
        case 1
            if B==2
                R=1;
            elseif B==3
                R=2;
            else
                R=0;
            end
        case 2
            if B==1
                R=2;
            elseif B==3
                R=1;
            else
                R=0;
            end      
        case 3
            if B==1
                R=1;
            elseif B==2
                R=2;
            else
                R=0;
            end
    end
end
