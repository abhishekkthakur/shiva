settings.outformat = "pdf";
size(12cm, 0);

for (int n = 3; n <= 7; ++n)
{
	draw(shift(2.2*n, 0)*polygon(n));
}

for (int n = 8; n <= 12; ++n)
{
	draw(shift(2.2*n, 0)*polygon(n));
}

path p = circle((0, 0), 4);
draw(shift(0, -3)*p, magenta);

path q = shift(0, -7) * rotate(45) * yscale(0.5) * p;
draw(q, blue);
