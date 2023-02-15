function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % TODO: fa cast matricii I la double
    I = cast(I,"double");
    
    for x = 1 : m
        for y = 1 : n
          % TODO: calculeaza matricea cu derivate fata de x Ix
          if y == 1 || y == n
            Ix(x,y) = 0;
          else
            Ix(x,y) = fx(I,x,y); 
          endif
          
          % TODO: calculeaza matricea cu derivate fata de y Iy
          if x == 1 || x == m
            Iy(x,y) = 0;
          else
            Iy(x,y) = fy(I,x,y); 
          endif

          % TODO: calculeaza matricea cu derivate fata de xy Ixy
          if y == 1 || y == n || x == 1 || x == m
            Ixy(x,y) = 0;
          else
            Ixy(x,y) = fxy(I,y,x);
          endif
          
        endfor
    endfor

endfunction