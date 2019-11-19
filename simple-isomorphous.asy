// Declaring necessary settings.
settings.outformat = "pdf";
unitsize(2cm);
defaultpen(fontsize(5pt));

// Defining necessary labels.
Label L000 = Label("$o$", position = BeginPoint, align = 1W + 2S);
Label L100 = Label("$1$", position = BeginPoint, align = 1E + 2S);

// Drawing the 2-D coordinate axes.
draw((-0.3, 0) -- (5.3, 0));
draw((0, -0.3) -- (0, 5.0), arrow = Arrow(TeXHead));
draw((5.0, -0.3) -- (5.0, 5.0), arrow = Arrow(TeXHead));
label("$Temperature (Celcius)$", (-0.7, 3));
label("$Composition (Mole fraction)$", (2.5, -0.1));

// Please give the melting temperature (in degree celcius) of the two end pure components.
real Ta = 1085;		// For example this is the melting point of pure Copper.
real Tb = 1455; 	// For example this is the melting point of pure Nickel.

// Scaling the above melting point temperatures within the limit of our phase diagram.
// Composition axis is in the scale of 0 to 5.
// Temperature axis is in the scale of 0 to 6.
real Temp_a = (6/4000) * Ta;
real Temp_b = (6/4000) * Tb;

// Drawing the scaled melting points of pure elements.
dot((0, Temp_a));
dot((5, Temp_b));

// Change this temperature labels as well.
label("$1085$", (-0.2, Temp_a));
label("$1455$", (5.2, Temp_b));

// Drawing the simple isomorphous line between these two temperatures.
real mid_comp = 0.5;
real mid_temp = (Temp_a + Temp_b) / 2;
real flap_tolerance = 5; 	// This is percentage tolerance. Set this value to how much you want the flap of simple isomorphous to open.
real upper_temp = mid_temp + mid_temp*flap_tolerance*0.01;
real lower_temp = mid_temp - mid_temp*flap_tolerance*0.01;

draw((0, Temp_a) .. (2.5, upper_temp) .. (5, Temp_b));
draw((0, Temp_a) .. (2.5, lower_temp) .. (5, Temp_b));

// Drawing the labels of the phases in the phase diagram.
label("$Alpha$", (2.5, lower_temp - lower_temp*5*flap_tolerance*0.01));
label("$Beta$", (2.5, upper_temp + upper_temp*5*flap_tolerance*0.01));
label("$Alpha + Beta$", (2.5, mid_temp));

// Drawing the extreme composition values.
dot((0, 0), L = L000);
dot((5, 0), L = L100);
