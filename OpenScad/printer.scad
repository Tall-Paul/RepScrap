include <libraries/vslots.scad>
include <libraries/motors.scad>


/*
module gantry(height = 200){
    translate([-6,-20,height]){
            rotate([90,0,0]){
                color("black")
                    vslot(length=380,type=2020);
            }
        }
        translate([30,-27.5,height-18]){
            nema17();
        }
}
*/

module gantry(height = 200){
    translate([15,5,height]){
            rotate([90,0,0]){
                color("black")
                    cylinder(430,5,5);
            }
        }
        translate([30,-27.5,height-30]){
            nema17();
        }
        translate([30,-434.5,height-30]){
            nema17();
        }
}


module oneside(){
    union(){
        rotate([0,180,0]){
            import("../STLs/Bottom_Corner_Bracket.stl");
        }
        
        //bottom Y frame
        translate([-16,15,-20]){
            rotate([90,0,0]){
                color("black")
                    vslot(length=450,type=2040);
            }
        }

        translate([0,-420,0]){
        rotate([0,180,180]){
            mirror([1,0,0])
                import("../STLs/Bottom_Corner_Bracket.stl");
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
        
        //top brackets
        translate([0,-420,550]){
            rotate([0,0,180]){
                import("../STLs/Top_Corner_Bracket.stl");
            }
        }
        translate([0,-0,550]){
            rotate([0,0,0]){
                mirror([1,0,0])
                import("../STLs/Top_Corner_Bracket.stl");
            }
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
        translate([74,-355,0]){
            color("red")
                cube([150,300,40]);
        }
        
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
        gantry(200);
    }
}

union(){
    oneside();
    translate([448,0,0]){
        mirror([1,0,0])
            oneside();
    }
}
