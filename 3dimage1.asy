settings.outformat = "pdf";
settings.render = 16;
import graph3;
import palette;

size(8cm,0);
currentprojection=perspective(2,5,2);

real f(pair z) {return exp(-((z.x-1)^2+z.y^2))
                       -10*(z.x^3+z.x*z.y^4-z.x/5)*exp(-abs(z)^2);}

limits((-3.5,-3.5,-3.5),(3.5,3.5,3.5));
xaxis3(Label("$x$",1),blue,arrow=Arrow3);
yaxis3(Label("$y$",1),blue,arrow=Arrow3);
zaxis3(Label("$z$",1),blue,arrow=Arrow3);

surface s=surface(f,(-3,-3),(3,3),60,60,Spline);

s.colors(palette(s.map(zpart),Rainbow())); 

draw(s,meshpen=blue);

shipout(bbox(2mm,Fill(white)));
