%objective function 
function z = fobj(binary)
    dec=bi2de(binary);
    z=dec.^2+dec.^3-2*dec;

