include <libraries/vslots.scad>

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

module shave(){
    translate([20,-150,-150]){
        cube([2,250,250]);
    }
    translate([-150,-150,24]){
        cube([200,250,2]);
    }
    translate([-150,38,-150]){
        cube([200,2,200]);
    }
    
    translate([20,25,27]){
    rotate([0,45,45]){
        cube([20,20,5]);
    }
}
}

module zaxis(){
    /*translate([-5,0.4,0]){
        import("imports/z-axis_support_bearing_no_screws.stl");
    }*/
    translate([-16,7,15]){
        //cube([32,7.9,5]);
    }
    translate([11,0,0]){
        //cube([5,20,20]);
    }
    /*
    translate([-27,12,-50]){
        difference(){
            cube([46,26,50]);
            translate([3,3,0]){
                vslot(length=50,type=2040);
            }
        }
    }
    */

}


difference(){
union(){
    
translate([-4,15,0]){    
    cube([24,24,24]);
}

translate([16,195,20]){
    rotate([90,180,90]){
    import("C:/Users/tall_/Downloads/90_Surface_Bracket_2.stl.stl");
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
translate([-24,11,0]){
 cube([40,24,20]);
}  



translate([-14,-10,0]){
  cube([30,25,20]);
}  

translate([-18,-10,0]){
 //cube([10,30,20]);
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

//zaxis();
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

}

/*
translate([20,-90,-50]){
    cube([2,120,100]);
}
translate([-50,-90,24]){
    cube([120,120,2]);
}

translate([-44,33,-40]){
cube([60,2,60]);
}
*/
//shave corner
translate([-24,-30,0]){
     cube([40,20,20]);
}
shave();

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

translate([-14,24,-60]){
    cylinder(100,2.6,2.6);
}

translate([-34,24,-60]){
    cylinder(100,2.6,2.6);
}
translate([6,24,-60]){
    //cylinder(100,2.6,2.6);
}

translate([6,44,10]){
    rotate([90,0,0]){
        cylinder(110,2.6,2.6);
    }
}
translate([-4,-5,-60]){
    cylinder(100,5,5);
}
translate([-6.5,-10,0]){
 cube([5,4,20]);
} 

}

/*
translate([200,200,200]){
    difference(){
        cube([20,40,20]);
        rotate([0,0,45]){
            cube([60,60,40]);
        }
    }
}
*/
  






