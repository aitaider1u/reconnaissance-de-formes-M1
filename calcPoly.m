function [x,y] = calcPoly(m,t,img)
    h = size(img,1);
    w = size(img,2);
    dist = 1; %rayon 
    x = m(1);     
    y = m(2);     
    while  all([x <=w, x >= 1, y <= h, y >= 1])
        if (img(y,x) == 0 )
            break
        end 
        dist = dist+1;
        x = floor( m(1) + dist*sin(t));
        y = floor( m(2) - dist*cos(t));   
    end
    x = floor( m(1) + (dist-1)*sin(t));
    y = floor( m(2) - (dist-1)*cos(t));   
end 