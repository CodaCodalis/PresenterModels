difference(){
    resize([40,12,6])sphere(r=10);
    translate([0,0,2])
        cube([20,8,6],center=true);
    translate([9,0,0])
        rotate([0,90,0])cylinder(h=12,r=0.7);
    translate([9,0,0])
        rotate([0,90,0])cylinder(h=12,r=0.7);translate([6,3,0])
        cylinder(h=5,r=1.4);
    translate([6,2,-4])
        cylinder(h=4,r=1.4);
    translate([6,-2,-4])
        cylinder(h=4,r=1.4);
}

translate([0,20,0])intersection(){
    resize([40,12,6])sphere(r=10);
    translate([0,0,4])
        cube([20,8,6],center=true);
}