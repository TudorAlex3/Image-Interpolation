function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================

    % TODO: calculeaza derivata
    r1 = f(y-1,x-1);
    r2 = f(y+1,x+1);
    r3 = f(y+1,x-1);
    r4 = f(y-1,x+1);
    r = (r1+r2-r3-r4)/4;

endfunction