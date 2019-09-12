settings.outformat = "png";
settings.render = 8;
import three;
size(4cm, 0);

draw(-X -- X .. Y .. X-Y+Z .. cycle);
dot(-X ^^ X ^^ Y ^^ X-Y+Z);
