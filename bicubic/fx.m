function r = fx(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: calculeaza derivata
    r1 = f(x,y+1);
    r2 = f(x,y-1);
    r = (r1-r2)/2;

endfunction