include <libraries/vslots.scad>
include <libraries/motors.scad>

$fn=36;

module extension(){
    translate([15,-85,-40]){
    rotate([90,0,90]){
        import(     "imports/2020_long_straight_bracket (1).stl");
    }
    }
    translate([55,-85,20]){
    rotate([0,0,90]){
        import(     "imports/2020_long_straight_bracket (1).stl");
    }
}
translate([15,-85,18]){
cube([5,120,7]);
}


}

module foot(){
    
}

module shave(){
    translate([20,-150,-150]){
        cube([100,250,250]);
    }
    translate([-150,-150,24]){
        cube([200,250,100]);
    }
    translate([-150,38,-150]){
        cube([200,100,200]);
    }
    
    translate([20,25,27]){
    rotate([0,45,45]){
        cube([20,20,5]);
    }
}
}

module zaxis(){
    import("imports/z-axis_support_bearing_no_screws.stl");
    translate([-16,6.6,15]){
        cube([32,7.9,5]);
    }

}


difference(){
union(){
    
translate([-4,15,0]){    
    cube([24,24,24]);
}
hull(){
    translate([16,14,-68]){
        cube([5,2,45]);
    }
    translate([16,-53,0]){
        cube([5,48,2]);
    }
}

translate([16,175,5]){
    rotate([90,180,90]){
    //import("C:/Users/tall_/Downloads/90_Surface_Bracket_2.stl.stl");
    }
}

translate([176,35,20]){
    rotate([0,0,180]){
    import("imports/90_Surface_Bracket_2.stl.stl");
    }
}


translate([16,34,180]){
    rotate([90,90,180]){
    import("imports/90_Surface_Bracket_2.stl.stl");
    }
}
translate([-24,14,0]){
 cube([40,20,20]);
}
    //sleeve
    translate([-104,11,-3]){
        difference(){
            cube([80,27,27]);
            translate([0,3,3]){
                cube([80,20,20]);
            }
            
            /*translate([77.2,-1,0]){
                rotate([0,43,0]){
                    cube([5,24,5]);
                }
            }
            translate([80.23,-4.05,0]){
                rotate([0,0,47]){
                    cube([5,5,24]);
                }
            }*/
        }
    }


translate([1,0,0]){
    extension();
}
translate([-4,19,-15]){
rotate([90,0,90]){
        extension();
    }
}
translate([-19,14,5]){
rotate([180,270,90]){
        extension();
    }
}

translate([4,25,15]){
    cylinder(15,6.6,6.6);
}



}



shave();

translate([4,25,15]){
    cylinder(25,3.6,3.6);
}
translate([-14,24,-60]){
    cylinder(100,2.6,2.6);
}

translate([-34,24,-60]){
    cylinder(100,2.6,2.6);
}
translate([-54,24,-60]){
    cylinder(100,2.6,2.6);
}
translate([-74,24,-60]){
    cylinder(100,2.6,2.6);
}
translate([-94,24,-60]){
    cylinder(100,2.6,2.6);
}

translate([6,44,10]){
    rotate([90,0,0]){
        cylinder(110,2.6,2.6);
    }
}

translate([-34,44,10]){
    rotate([90,0,0]){
        cylinder(110,2.6,2.6);
    }
}
translate([-54,44,10]){
    rotate([90,0,0]){
        cylinder(110,2.6,2.6);
    }
}
translate([-74,44,10]){
    rotate([90,0,0]){
        cylinder(110,2.6,2.6);
    }
}
translate([-94,44,10]){
    rotate([90,0,0]){
        cylinder(110,2.6,2.6);
    }
}

translate([16,-27,-40]){
    cube([2,42,40]);
}

}


//add foot


translate([4,25,15]){
    difference(){
        cylinder(15,6.6,6.6);
        cylinder(15,3.6,3.6);
    }
}

module frame(){
    translate([17.5,-29,0]){
        rotate([0,180,0]){
            nema17();
        }
    }

    translate([-24,14,0]){
        rotate([90,0,0]){
            color("black")
                vslot(length=100,type=2040);
        }
    }
    translate([-24,34,0]){
        rotate([180,0,0]){
            color("black")
                vslot(length=100,type=2040);
        }
    }
}

frame();


