//
// ktKILLIFISH3
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;

d1 = 7+1;
d2 = 12-1;
d3 = 2.1+0.4;
h1 = 9.6-2;
h2 = 2.1+0.4;
th1 = 5.1;
th2 = 2;
r1 = 20;
x1 = 16;

A = 1;
B = 0;

bx = 210;
bxh = 210/2;
by = 100;
bz = 60;

ar = 22/2;
ard = 1;
br = 50/2;
brd = 1;
cr = 37/2;
crd = 1;
dr = br-brd-0.2;
drd = 1;

A=0;
B=1;

//pole();

if(A)
{
difference()
{
    cylinder(h=10, r=ar+ard, $fn=100);
    translate([0, 0, -gap1]) cylinder(h=10+gap2, r=ar, $fn=100);
}

difference()
{
    cylinder(h=20, r=br+brd, $fn=100);
    translate([0, 0, -gap1]) cylinder(h=20+gap2, r=br, $fn=100);
}

for(i=[0:20:360])
{
    rotate([0, 0, i]) translate([ar, -1/2, 0]) cube([br-ar, 1, 2]);
}

difference()
{
    cylinder(h=2, r=cr+crd, $fn=100);
    translate([0, 0, -gap1]) cylinder(h=2+gap2, r=cr, $fn=100);
}

difference()
{
    for(i=[0:120:360])
    {
        rotate([0, 0, i]) translate([0, -2/2, 0]) cube([ar+ard+2, 2, 18]);
    }
    translate([0, 0, -90]) cylinder(h=100, r=22/2, $fn=100);
    translate([0, 0, -90-gap1]) cylinder(h=120+gap2, r=17/2, $fn=100);
}
}

if(B)
{
difference()
{
    translate([0, 0, 20-7]) cylinder(h=7, r=dr+drd, $fn=100);
    translate([0, 0, 20-7-gap1]) cylinder(h=7+gap2, r=dr, $fn=100);
}

for(i=[0:40:360])
{
    rotate([0, 0, i]) translate([0, -1/2, 18]) cube([dr, 1, 2]);
}

difference()
{
    translate([0, 0, 18]) cylinder(h=2, r=ar+ard, $fn=100);
    translate([0, 0, 18-gap1]) cylinder(h=2+gap2, r=ar, $fn=100);
}
}



module pole()
{
    difference()
    {
        color( "White" ) translate([0, 0, -90]) cylinder(h=100, r=22/2, $fn=100);
        translate([0, 0, -90-gap1]) cylinder(h=100+gap2, r=17/2, $fn=100);
    }
}
