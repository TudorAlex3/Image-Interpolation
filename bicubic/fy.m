function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================

    % TODO: calculeaza derivata
    r1 = f(x+1,y);
    r2 = f(x-1,y);
    r = (r1-r2)/2;

endfunction