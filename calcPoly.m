function [x,y] = calcPoly(m,t,img)
    h = size(img,1);
    w = size(img,2);
    dist = 1 ; %rayon 
    x = m(1);    %   cos 
    y = m(2);    %   sin 
    try 
        while  all([x <=w, x >= 1, y <= h, y >= 1,img(y,x) == 1])
                dist = dist+1;
                x = floor( m(1) + dist*sin(t));
                y = floor( m(2) - dist*cos(t));   
        end
    catch
         x = floor( m(1) + (dist-1)*sin(t));
         y = floor( m(2) - (dist-1)*cos(t));   
        return
    end 
         x = floor( m(1) + (dist-1)*sin(t));
         y = floor( m(2) - (dist-1)*cos(t));   
end 