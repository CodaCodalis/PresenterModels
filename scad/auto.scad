/*
//Tests mit Zylinder
translate([0,0,0])
color ([1,0,0])
cylinder(h=2,r=8);

translate([0,0,4])
color ([0,0,1])
cube([4,4,4],center=true);

translate([0,0,7])
color ([0,1,0])
cube([2,2,2],center=true);

translate([0,0,8])
color ([1,0,0])
cylinder(h=2,r=8);
*/

/*
//Quader mit Ausklinkung
cube([10,10,10]);
translate([0,0,10])
cube([5,5,5]);
translate([5,5,10])
cube([5,5,5]);
translate([0,0,15])
cube([10,10,10]);
*/

/*
//eine Kugel
sphere(r=10);

//ein Ellipsoid
//scale([1,0.4,1])sphere(r=10);
//resize([20,8,20])sphere(r=10);
*/

//Formen abziehen
/*
difference(){
    sphere(r=10);
translate([-12,0,0])
    sphere(r=10);
translate([0,-12,0])
    sphere(r=10);
translate([0,12,0])
    sphere(r=10);
translate([12,0,0])
    sphere(r=10);
translate([0,0,15])
    sphere(r=10);
translate([0,0,-15])
    sphere(r=10);
}
*/

/*
translate([6,0,0])
intersection(){
    sphere(r=10);
translate([-12,0,0])
    sphere(r=10);
}
*/


//ein Auto
//alles skalieren
//scale([0.2,0.2,0.2]) {

base_height = 8;
top_height = 10;
body_roll=0;

rotate([body_roll,0,0]){
//Karosserie
//cube([60,20,base_height],center=true);
    resize([90,20,12])sphere(r=10);

//Kabine
//translate([5,0,base_height/2+top_height/2])
    //cube([30,16,top_height],center=true);
translate([10,0,5])
    resize([50,15,15])sphere(r=10);
}

wheel_rad=8;
track=27;
wheel_width=4;
wheels_turn=-12;
side_spheres_radius=50;
hub_thickness=3;
cylinder_radius=1;
cylinder_height=2*wheel_rad;

//linkes Vorderrad
translate([-20,-track/2,0]) rotate([0,0,wheels_turn])
    //cylinder(h=wheel_width,r=wheel_rad,center=true);
    //scale([1,0.4,1])sphere(r=wheel_rad);
    //resize([2*wheel_rad,wheel_width,2*wheel_rad])sphere(r=wheel_rad);
    difference(){
    sphere(r=wheel_rad);
    translate([0,side_spheres_radius + hub_thickness/2,0])
        sphere(r=side_spheres_radius);
    
    translate([0,-(side_spheres_radius + hub_thickness/2),0])
        sphere(r=side_spheres_radius);
        
    translate([wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([-wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,-wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    }

//rechtes Voderrad
translate([-20,track/2,0])rotate([0,0,wheels_turn])
    //cylinder(h=wheel_width,r=wheel_rad,center=true);
    //scale([1,0.4,1])sphere(r=wheel_rad);
    //resize([2*wheel_rad,wheel_width,2*wheel_rad])sphere(r=wheel_rad);
    difference(){
    sphere(r=wheel_rad);
    translate([0,side_spheres_radius + hub_thickness/2,0])
        sphere(r=side_spheres_radius);
    
    translate([0,-(side_spheres_radius + hub_thickness/2),0])
        sphere(r=side_spheres_radius);
        
    translate([wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([-wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,-wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    }
//linkes Hinterrad
translate([20,track/2,0])rotate([0,0,0])
    //cylinder(h=wheel_width,r=wheel_rad,center=true);
    //scale([1,0.4,1])sphere(r=wheel_rad);
    //resize([2*wheel_rad,wheel_width,2*wheel_rad])sphere(r=wheel_rad);
    difference(){
    sphere(r=wheel_rad);
    translate([0,side_spheres_radius + hub_thickness/2,0])
        sphere(r=side_spheres_radius);
    
    translate([0,-(side_spheres_radius + hub_thickness/2),0])
        sphere(r=side_spheres_radius);
        
    translate([wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([-wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,-wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    }
//rechtes Hinterrad
translate([20,-track/2,0])rotate([0,0,0])
    //cylinder(h=wheel_width,r=wheel_rad,center=true);
    //scale([1,0.4,1])sphere(r=wheel_rad);
    //resize([2*wheel_rad,wheel_width,2*wheel_rad])sphere(r=wheel_rad);
    difference(){
    sphere(r=wheel_rad);
    translate([0,side_spheres_radius + hub_thickness/2,0])
        sphere(r=side_spheres_radius);
    
    translate([0,-(side_spheres_radius + hub_thickness/2),0])
        sphere(r=side_spheres_radius);
        
    translate([wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([-wheel_rad/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        
    translate([0,0,-wheel_rad/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    }
//Vorderachse
translate([-20,0,0])rotate([90,0,0])
    cylinder(h=track,r=2,center=true);

//Hinterachse
translate([20,0,0])rotate([90,0,0])
    cylinder(h=track,r=2,center=true);
//}


//neue Räder
/*
wheel_radius=10;
side_spheres_radius=50;
hub_thickness=4;
difference(){
    sphere(r=wheel_radius);
    translate([0,side_spheres_radius + hub_thickness/2,0])
        sphere(r=side_spheres_radius);
    translate([0,-(side_spheres_radius + hub_thickness/2),0])
        sphere(r=side_spheres_radius);
}
*/

//neue Räder mit Radmuttern
/*
wheel_radius=10;
side_spheres_radius=50;
hub_thickness=4;
cylinder_radius=2;
cylinder_height=2*wheel_radius;
difference(){
    // Wheel sphere
    sphere(r=wheel_radius);
    
    // Side sphere     
    translate([0,side_spheres_radius + hub_thickness/2,0])
        sphere(r=side_spheres_radius);
    
    // Side sphere 2
    translate([0,-(side_spheres_radius + hub_thickness/2),0])
        sphere(r=side_spheres_radius);
    
    // Cylinder 1
    translate([wheel_radius/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    
    // Cylinder 2
    translate([0,0,wheel_radius/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    
    // Cylinder 3
    translate([-wheel_radius/2,0,0])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    
    // Cylinder 4
    translate([0,0,-wheel_radius/2])rotate([90,0,0])
        cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    }
*/

