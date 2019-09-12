settings.outformat="pdf";
settings.render=16;
import three;
size(3.55cm, 0);
draw(-1.5X -- 1.5X,
arrow=Arrow3(TeXHead2), L=Label("$x$",
position=EndPoint, align=W));
draw(-1.5Y -- 1.5Y,
arrow=Arrow3(TeXHead2), L=Label("$y$",
position=EndPoint));
draw(-1.5Z -- 1.5Z, arrow=Arrow3(TeXHead2), L=Label("$z$",
position=EndPoint));
draw(unitsphere, surfacepen = material(white, emissivepen =
gray(0.2)));
