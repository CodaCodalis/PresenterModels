/*
//Grundplatte (GP)
difference(){
cube([600,200,10]);
translate([15,15,-1])
cube([570,170,12]);
}

//Wartungsklappe (WK)
translate([10,240,0])
cube([570,180,10]);
*/

//2. GP
translate([-1200,0,0])
difference(){
cube([1000,600,10]);
translate([15,15,-1])
cube([970,570,12]);
}

//2. WK
translate([-1190,640,0])
cube([970,570,10]);
/*
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
*/

//2. DP
translate([-1200,0,100])
difference(){
cube([1000,600,10]);
translate([240,190,-10])
cylinder(h=30,r=30);
translate([240,410,-10])
cylinder(h=30,r=30);

translate([650,300,5])
rotate([0,0,90])resize([400,400,20])
import("/home/larah/Entwicklung/PresenterModels/stl/logo.stl");  

}
/*
//linker Button
translate([120,60,75])
color([0,0,1])cylinder(h=20,r=18);

//rechter Button
translate([120,140,75])
color([0,0,1])cylinder(h=20,r=18);
*/

//2. li. Button
translate([-960,190,95])
color([0,0,1])cylinder(h=20,r=26);
translate([-960,190,90])
color([0,0,1])cylinder(h=5,r=30);
translate([-960,190,80])
color([0,0,1])cylinder(h=10,r=20);

//2. re. Button
translate([-960,410,95])
color([0,0,1])cylinder(h=20,r=26);
translate([-960,410,90])
color([0,0,1])cylinder(h=5,r=30);
translate([-960,410,80])
color([0,0,1])cylinder(h=10,r=20);

/*
//linke Seitenplatte (li. SP)
translate([0,-20,20])
//color([0,1,0])
cube([600,10,50]);
*/

//2. li. SP
translate([-1200,-20,20])
cube([1000,10,70]);

/*
//rechte Seitenplatte (re. SP)
translate([0,210,20])
//color([0,1,0])
cube([600,10,50]);
*/

//2. re. SP
translate([-1200,610,20])
cube([1000,10,70]);

/*
//hintere Seitenplatte (hi. SP)
translate([610,0,20])
//color([0,1,0])
cube([10,200,50]);
*/

//2. hi. SP
translate([-190,0,20])
cube([10,600,70]);

/*
//vordere Seitenplatte (vo. SP)
translate([-20,0,20])
difference(){
//color([1,0,0])
cube([10,200,50]);
translate([-10,100,25])
rotate([0,90,0])cylinder(h=30,r=20);
}
*/

//2. vo. SP
translate([-1220,0,20])
difference(){
cube([10,600,70]);
translate([-10,300,35])
rotate([0,90,0])cylinder(h=30,r=30);
}

/*
//gerundete Kante zw. GP und li. SP
translate([0,0,20])
difference(){
//color([0,0,1])
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-10,0])cube([600,30,30]);
}
*/

//2. gerundete Kante zw. GP und li. SP
translate([-1200,0,20])
difference(){
    rotate([0,90,0])cylinder(h=1000,r=20);
    translate([0,-10,0])cube([1000,30,30]);
}

/*
//gerundete Kante zw. GP und re. SP
translate([0,200,20])
difference(){
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-20,0])cube([600,30,30]);
}
*/

//2. gerundete Kante zw. GP und re. SP
translate([-1200,600,20])
difference(){
    rotate([0,90,0])cylinder(h=1000,r=20);
    translate([0,-20,0])cube([1000,30,30]);
}

/*
//gerundete Kante zw. DP und li. SP
translate([0,0,70])
difference(){
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-10,-20])cube([600,30,30]);
}
*/

//2. gerundete Kante zw. DP und li. SP
translate([-1200,0,90])
difference(){
    rotate([0,90,0])cylinder(h=1000,r=20);
    translate([0,-10,-20])cube([1000,30,30]);
}

/*
//gerundete Kante zw. DP und re. SP
translate([0,200,70])
difference(){
    rotate([0,90,0])cylinder(h=600,r=20);
    translate([0,-20,-20])cube([600,30,30]);
}
*/

//2. gerundete Kante zw. DP und re. SP
translate([-1200,600,90])
difference(){
    rotate([0,90,0])cylinder(h=1000,r=20);
    translate([0,-20,-20])cube([1000,30,30]);
}

/*
//gerundete Kante zw. GP und hi. SP
translate([600,200,20])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,0])cube([30,200,30]);
}
*/

//2. gerundete Kante zw. GP und hi. SP
translate([-200,600,20])
difference(){
    rotate([90,0,0])cylinder(h=600,r=20);
    translate([-30,-600,0])cube([30,600,30]);
}

/*
//gerundete Kante zw. DP und hi. SP
translate([600,200,70])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,-20])cube([30,200,30]);
}
*/

//2. gerundete Kante zw. DP und hi. SP
translate([-200,600,90])
difference(){
    rotate([90,0,0])cylinder(h=600,r=20);
    translate([-30,-600,-20])cube([30,600,30]);
}

/*
//gerundete Kante zw. re. SP und hi. SP
translate([600,200,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}
*/

//2. gerundete Kante zw. re. SP und hi. SP
translate([-200,600,20])
difference(){
    rotate([0,0,90])cylinder(h=70,r=20);
}

/*
//gerundete Kante zw. li. SP und hi. SP
translate([600,0,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}
*/

//2. gerundete Kante zw. li. SP und hi. SP
translate([-200,0,20])
difference(){
    rotate([0,0,90])cylinder(h=70,r=20);
}

/*
//gerundete Kante zw. re. SP und vo. SP
translate([0,200,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}
*/

//2. gerundete Kante zw. re. SP und vo. SP
translate([-1200,600,20])
difference(){
    rotate([0,0,90])cylinder(h=70,r=20);
}

/*
//gerundete Kante zw. li. SP und vo. SP
translate([0,0,20])
difference(){
    rotate([0,0,90])cylinder(h=50,r=20);
}
*/

//2. gerundete Kante zw. li. SP und vo. SP
translate([-1200,0,20])
difference(){
    rotate([0,0,90])cylinder(h=70,r=20);
}

/*
//gerundete Kante zw. DP und vo. SP
translate([0,200,70])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,-30])cube([60,200,30]);
}
*/

//2. gerundete Kante zw. DP und vo. SP
translate([-1200,600,90])
difference(){
    rotate([90,0,0])cylinder(h=600,r=20);
    translate([-30,-600,-30])cube([60,600,30]);
}

/*
//gerundete Kante zw. GP und vo. SP
translate([0,200,20])
difference(){
    rotate([90,0,0])cylinder(h=200,r=20);
    translate([-30,-200,0])cube([60,200,30]);
}
*/

//2. gerundete Kante zw. GP und vo. SP
translate([-1200,600,20])
difference(){
    rotate([90,0,0])cylinder(h=600,r=20);
    translate([-30,-600,0])cube([60,600,30]);
}

/*
//vier vordere Ecken
translate([0,0,20])
sphere(r=20);

translate([0,0,70])
sphere(r=20);

translate([0,200,70])
sphere(r=20);

translate([0,200,20])
sphere(r=20);
*/

//2. vier vordere Ecken
translate([-1200,0,20])
sphere(r=20);

translate([-1200,0,90])
sphere(r=20);

translate([-1200,600,90])
sphere(r=20);

translate([-1200,600,20])
sphere(r=20);

/*
//vier hintere Ecken
translate([600,0,20])
sphere(r=20);

translate([600,0,70])
sphere(r=20);

translate([600,200,70])
sphere(r=20);

translate([600,200,20])
sphere(r=20);
*/

//2. vier hintere Ecken
translate([-200,0,20])
sphere(r=20);

translate([-200,0,90])
sphere(r=20);

translate([-200,600,90])
sphere(r=20);

translate([-200,600,20])
sphere(r=20);

/*
//Logo
translate([-500,300,100])
//color([1,0,0])
rotate([0,0,90])resize([400,400,30])
import("/home/larah/Entwicklung/PresenterModels/stl/logo.stl");
*/