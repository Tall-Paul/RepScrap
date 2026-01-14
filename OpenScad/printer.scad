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
       translate([4.5,5,height-28]){
            cube([20,6,40]);
        }
        translate([4.5,-430,height-28]){
            cube([20,6,40]);
        }
        
        translate([-8,-10.5,height-33]){
            //cube([25,10,5]);
        }
        
        translate([2,-15,height-20]){
            rotate([90,0,0]){
                color("black")
                    cylinder(420,5,5);
            }
        }
        translate([32,2,height-20]){
            rotate([90,0,90]){
                color("black")
                    cylinder(220,5,5);
            }
        }
        translate([25,-415,height-20]){
            rotate([90,0,90]){
                color("black")
                    cylinder(200,5,5);
            }
        }
        translate([22,-55.5,height-70]){
            nema17();
        }
        translate([22,-406.5,height-70]){
            nema17();
        }
}

module printed_gantry_part(height = 200,colour="red"){
    difference(){
     color(colour)
        //rough shape
        hull(){
            //1 'arm'
            translate([2,-15,height-20]){
                rotate([90,0,0]){
                    color(colour)
                        cylinder(31,11,11);
                }
            }
            translate([13,-45,height-33]){
               color(colour)  
                    cube([2,30,5]);
            }
            
            //the other 'arm'
            translate([25,5,height-20]){
                rotate([90,0,90]){
                    color(colour)
                            cylinder(30.3,11,11);
                }
            }
            translate([25,-4,height-33]){
               color(colour)  
                 cube([30.3,3,2]);
            }
      
            //back section
            translate([-10,-15,height-33]){
                       color(colour)  
                            cube([35,25,46]);
            }
        }
        
        //subtract the gantry
        color(colour)   
            gantry(height);
        //clear out more space around the stepper
        translate([19 ,-63,height-60]){
             color(colour) 
                   cube([50,50,75]);
        }
        //space for the linear rail
        translate([9.5,6,height-50]){
             color(colour) 
                cube([10,7,80]);
        }
        //space for the threaded rod
        translate([3.5,-5,height-50]){
             color(colour) 
                cylinder(80,5.1,5.1);
        }
        
       //space for gantry rod
      translate([2,-15,height-20]){
                rotate([90,0,0]){
                   color(colour)  cylinder(45,8.1,8.1);
                }
      }  
      translate([32,5,height-20]){
                rotate([90,0,90]){
                        difference(){
                           color(colour)   
                            cylinder(35,8.1,8.1);
                            
                        }
                }
            }
     translate([0,-60,height-21]){       
         rotate([0,0,0]){
            cube([10,45,45]);
         }   
     }
     translate([32,-1,height-17]){       
         rotate([0,0,0]){
            cube([45,10,50]);
         }   
     }
     //screw holes for stepper mount
         translate([30,-54,height-33]){
            rotate([0,0,45]){
             width = 42.3;
                cube([width,width,5]);
                centre = width / 2;
                offset = 31/2;
             translate([centre - offset,centre - offset,0]){
                cylinder(60,4.5,4.5);
            }
            translate([centre - offset,centre + offset,0]){
                cylinder(60,3,3);
            }
            translate([centre + offset,centre + offset,0]){
                cylinder(60,4.5,4.5);
            }
            }
             
         }
         //plane off back
         translate([-20,10,height-33]){
             cube([45,10,46]);
         }
         //space for the nut that goes on the threaded rod
        translate([-2.75,-20,height-35]){
             color(colour) 
                cube([12.5,30,6]);
        }
    }
   
            
     //the stepper motor mount
    difference(){
     color(colour)
      translate([30,-54,height-33]){
        rotate([0,0,45]){
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
    //space for the nut that goes on the threaded rod duplicated for stepper mount edge
        translate([-2.75,-20,height-35]){
             color(colour) 
                cube([12.5,30,6]);
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




module oneside(height=200){
    union(){
          frame();
          printed_frame("yellow");
          zmotion();
          gantry(height);
          printed_gantry(height,"yellow");
    }
}

module main(height=200){
    union(){
        oneside(height);
        translate([448,0,0]){
            mirror([1,0,0])
                oneside();
        }
    }
}

//main();
printed_gantry_part(100,"yellow");
