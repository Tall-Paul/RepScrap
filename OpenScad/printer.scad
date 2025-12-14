include <libraries/vslots.scad>
include <libraries/motors.scad>


module printed_gantry(height=200,colour="red"){
    printed_gantry_part(height,colour);
    translate([0,-420,0]){
        mirror([0,1,0]){
            printed_gantry_part(height,colour);
        }
    }
}
module gantry(height = 200){
       //linear block
       translate([4.5,5,height-30]){
            cube([20,6,40]);
        }
        translate([4.5,-430,height-30]){
            cube([20,6,40]);
        }
        
        translate([-8,-10.5,height-33]){
            //cube([25,10,5]);
        }
        
        translate([15,-15,height]){
            rotate([90,0,0]){
                color("black")
                    cylinder(420,5,5);
            }
        }
        translate([15,-5,height]){
            rotate([90,0,90]){
                color("black")
                    cylinder(220,5,5);
            }
        }
        translate([25,-415,height]){
            rotate([90,0,90]){
                color("black")
                    cylinder(200,5,5);
            }
        }
        translate([22,-55.5,height-30]){
            nema17();
        }
        translate([22,-406.5,height-30]){
            nema17();
        }
}

module printed_gantry_part(height = 200,colour="red"){
    difference(){
     color(colour)
        hull(){
        translate([15,-15,height]){
                rotate([90,0,0]){
                    color(colour)
                        difference(){
                            cylinder(39.5,8,8);
                            //cylinder(39,6,6);
                        }
                }
            }
            translate([22,-5,height]){
                rotate([90,0,90]){
                    color(colour)
                        difference(){
                            cylinder(42.3,8,8);
                            //cylinder(41,6,6);
                            
                        }
                }
            }
            
            translate([-10,-15,height-33]){
                color(colour)
                    difference(){
                       color(colour)  cube([35,25,46]);
                    }
            }
            translate([20,-55.5,height+11]){
               color(colour)  cube([2,41,2]);
            }
             translate([22,-14,height+11]){
               color(colour)  cube([42.3,3,2]);
            }
        

        }
        
      color(colour)   gantry(height);
        translate([22,-63,height-35]){
             color(colour) cube([50,50,55]);
        }
        translate([9.5,6,height-50]){
             color(colour) cube([10,4,80]);
        }
        translate([3.5,-5.5,height-50]){
             color(colour) cylinder(80,5.1,5.1);
        }
        translate([-12,-11,height-35]){
             color(colour) cube([30,12.5,4]);
        }
      translate([15,-15,height]){
                rotate([90,0,0]){
                            color(colour)  cylinder(45,5.1,5.1);
                }
      }  
      translate([22,-5,height]){
                rotate([90,0,90]){
                        difference(){
                           color(colour)   cylinder(45,5.1,5.1);
                            
                        }
                }
            }
        
    }
     color(colour)
     translate([22,-15,height+11]){
             color(colour)    cube([42.3,3,2]);
            }
     color(colour)
    translate([22,-55.5,height+8]){
        difference(){
            width = 42.3;
            cube([width,width,5]);
            centre = width / 2;
            offset = 31/2;
            
            translate([centre,centre,0]){
                cylinder(10,11.5,11.5);
            }
            translate([centre - offset,centre - offset,0]){
                cylinder(12,2,2);
            }
            translate([centre - offset,centre + offset,0]){
                cylinder(12,2,2);
            }
            translate([centre + offset,centre - offset,0]){
                cylinder(12,2,2);
            }
            translate([centre + offset,centre + offset,0]){
                cylinder(12,2,2);
            }
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
          printed_frame("yellow");
          zmotion();
          gantry(100);
          printed_gantry(100,"yellow");
    }
}

module main(){
    union(){
        oneside();
        translate([448,0,0]){
            mirror([1,0,0])
                oneside();
        }
    }
}

main();
//printed_gantry_part(100,"purple");
