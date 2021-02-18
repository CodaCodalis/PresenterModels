//Grundplatte (GP)
cube([600,200,10]);

//Deckplatte (DP)
translate([0,0,80])
difference(){
//color([0,0,1])
cube([600,200,10]);
translate([120,140,-10])
cylinder(h=30,r=20);
translate([120,60,-10])
cylinder(h=30,r=20);
}

//linker Button
translate([120,60,75])
color([0,0,1])cylinder(h=20,r=18);

//rechter Button
translate([120,140,75])
color([0,0,1])cylinder(h=20,r=18);

//rechter Button

//linke Seitenplatte (li. SP)
translate([0,-20,20])
//color([0,1,0])
cube([600,10,50]);

//rechte Seitenplatte (re. SP)
translate([0,210,20])
//color([0,1,0])
cube([600,10,50]);


//hintere Seitenplatte (hi. SP)
translate([610,0,20])
//color([0,1,0])
cube([10,200,50]);

//vordere Seitenplatte (vo. SP)
translate([-20,0,20])
difference(){
//color([1,0,0])
cube([10,200,50]);
translate([-10,100,25])
rotate([0,90,0])cylinder(h=30,r=20);
}


//gerundete Kante zw. GP und li. SP
translate([0,0,20])
difference(){
//color([0,0,1])
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-10,-10])cube([600,30,30]);
}

//gerundete Kante zw. GP und re. SP
translate([0,200,20])
difference(){
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-20,-10])cube([600,30,30]);
}
//gerundete Kante zw. DP und li. SP
translate([0,0,70])
difference(){
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-10,-20])cube([600,30,30]);
}

//gerundete Kante zw. DP und re. SP
translate([0,200,70])
difference(){
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-20,-20])cube([600,30,30]);
}
//gerundete Kante zw. GP und hi. SP
translate([600,200,20])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,-10])cube([30,200,30]);
}

//gerundete Kante zw. DP und hi. SP
translate([600,200,70])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,-20])cube([30,200,30]);
}

//gerundete Kante zw. re. SP und hi. SP
translate([600,200,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}

//gerundete Kante zw. li. SP und hi. SP
translate([600,0,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}

//gerundete Kante zw. re. SP und vo. SP
translate([0,200,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}

//gerundete Kante zw. li. SP und vo. SP
translate([0,0,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}

//gerundete Kante zw. DP und vo. SP
translate([0,200,70])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,-30])cube([60,200,30]);
}

//gerundete Kante zw. GP und vo. SP
translate([0,200,20])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,0])cube([60,200,30]);
}

//vier vordere Ecken
translate([0,0,20])
sphere(r=20);

translate([0,0,70])
sphere(r=20);

translate([0,200,70])
sphere(r=20);

translate([0,200,20])
sphere(r=20);

//vier hintere Ecken
translate([600,0,20])
sphere(r=20);

translate([600,0,70])
sphere(r=20);

translate([600,200,70])
sphere(r=20);

translate([600,200,20])
sphere(r=20);