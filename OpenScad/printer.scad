include <libraries/vslots.scad>
include <libraries/motors.scad>



module gantry(height = 200){
       //linear block
       translate([4.5,5,height-30]){
            cube([20,6,40]);
        }
        translate([4.5,-430,height-20]){
            cube([20,6,40]);
        }
        
        translate([-8,-10.5,height-33]){
            cube([25,10,5]);
        }
        
        translate([4,-15,height]){
            rotate([90,0,0]){
                color("black")
                    cylinder(420,5,5);
            }
        }
        translate([15,-5,height]){
            rotate([90,0,90]){
                color("black")
                    cylinder(200,5,5);
            }
        }
        translate([25,-432,height]){
            rotate([90,0,90]){
                color("black")
                    cylinder(200,5,5);
            }
        }
        translate([10,-55,height-30]){
            nema17();
        }
        translate([30,-424.5,height-30]){
            nema17();
        }
}

module printed_gantry(height = 200,colour="red"){
    translate([4,-15,height]){
            rotate([90,0,0]){
                color(colour)
                    difference(){
                        cylinder(40,8,8);
                        cylinder(40,5.1,5.1);
                    }
            }
        }
        translate([15,-5,height]){
            rotate([90,0,90]){
                color(colour)
                    difference(){
                        cylinder(40,8,8);
                        cylinder(40,5.1,5.1);
                        
                    }
            }
        }
        translate([-10,-20,height-33]){
            color(colour)
                difference(){
                    cube([40,30,46]);
                }
        }
}
module frame(){
    
        //bottom Y frame
        translate([-16,15,-20]){
            rotate([90,0,0]){
                color("black")
                    vslot(length=450,type=2040);
            }
        }
        
         //bottom x frame
        translate([24,15,0]){
            rotate([0,90,0]){
                color("black")
                    vslot(length=200,type=2020);
            }
        }
        translate([24,-455,0]){
            rotate([0,90,0]){
                color("black")
                    vslot(length=200,type=2020);
            }
        }
        
         //z posts
        translate([-16,15,0]){
            color("black")
                 vslot(length=550,type=2040);
        }
        translate([-16,-455,0]){
            color("black")
                 vslot(length=550,type=2040);
        }
        
        translate([-16,-10,550]){
            rotate([90,0,0]){
                color("black")
                    vslot(length=400,type=2020);
            }
        }
        //top x frame
        translate([24,15,570]){
            rotate([0,90,0]){
                color("black")
                    vslot(length=200,type=2020);
            }
        }
        translate([24,-455,570]){
            rotate([0,90,0]){
                color("black")
                    vslot(length=200,type=2020);
            }
        }
        
        //bed support
        translate([130,15,-20]){
            rotate([90,0,0]){
                color("black")
                    vslot(length=450,type=2020);
            }
        }
        //bed
        translate([74,-355,0]){
            color("gray")
                cube([150,300,40]);
        }
}

module printed_frame(colour="red"){
    rotate([0,180,0]){
            color(colour)
                import("../STLs/Bottom_Corner_Bracket.stl");
        }
        translate([0,-420,0]){
        rotate([0,180,180]){
            mirror([1,0,0])
                color(colour)
                import("../STLs/Bottom_Corner_Bracket.stl");
        }
        }
        //top brackets
        translate([0,-420,550]){
            rotate([0,0,180]){
                color(colour)
                import("../STLs/Top_Corner_Bracket.stl");
            }
        }
        translate([0,-0,550]){
            rotate([0,0,0]){
                mirror([1,0,0])
                color(colour)
                import("../STLs/Top_Corner_Bracket.stl");
            }
        }
        
}

module zmotion(){
     //motors
        translate([-18,-27.5,0]){
            nema17();
        }
         translate([-18,-434.5,0]){
            nema17();
        }
        translate([3.5,-5.5,50]){
            color("silver")
                cylinder(500,4,4);
        }
        translate([3.5,-413.5,50]){
            color("silver")
                cylinder(500,4,4);
        }
        
        //z-rail
        translate([10,8,48]){
            color("white")
                cube([9,7,500]);
        }
        translate([10,-434,48]){
            color("white")
                cube([9,7,500]);
        }
}




module oneside(){
    union(){
          frame();
          printed_frame("red");
          zmotion();
          gantry(100);
          printed_gantry(100,"red");
    }
}

union(){
    oneside();
    translate([448,0,0]){
        mirror([1,0,0])
            oneside();
    }
}
