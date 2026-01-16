height = 0;
colour = "green";

difference(){
     color(colour)
        //rough shape
        hull(){
            //1 'arm'
            translate([2,-15,height-20]){
                rotate([90,0,0]){
                    color(colour)
                        cylinder(21,11,11);
                }
            }
            translate([13,-35,height-33]){
               color(colour)  
                    cube([2,20,5]);
            }
            
            //the other 'arm'
            translate([25,5,height-20]){
                rotate([90,0,90]){
                    color(colour)
                            cylinder(25.3,11,11);
                }
            }
            translate([25,-4,height-33]){
               color(colour)  
                 cube([25.3,3,2]);
            }
      
            //back section
            translate([-10,-15,height-33]){
                       color(colour)  
                            cube([35,25,46]);
            }
            
            //motor mount
            translate([32,-56,height+8]){
                rotate([0,0,45]){
                cube([42.3,42.3,5]);
            }
            }
        }
        
        //clear out more space around the stepper
        translate([4.5,5,height-28]){
            cube([20,6,40]);
        }
        translate([13.5 ,-59.5,height-60]){
             color(colour) 
                   cube([50,50,75]);
        }
        //space for the linear rail
        translate([9.5,6,height-50]){
             color(colour) 
                cube([10,7,80]);
        }
        //space for the threaded rod
        translate([3.5,-7,height-50]){
             color(colour) 
                cylinder(80,5.1,5.1);
        }
        
       //space for gantry rod
      translate([2,-15,height-20]){
                rotate([90,0,0]){
                   color(colour)  cylinder(45,8.1,8.1);
                }
      }  
      translate([27,5,height-20]){
                rotate([90,0,90]){
                        difference(){
                           color(colour)   
                            cylinder(35,8.1,8.1);
                            
                        }
                }
            }
     //cutouts to get rods in
     translate([-45,-60,height-23]){       
         rotate([0,0,0]){
            cube([45,45,10]);
         }   
     }
     translate([27,-1,height-25]){       
         rotate([0,0,0]){
            cube([45,45,10]);
         }   
     }
     //screw holes for stepper mount
         translate([32,-56,height-33]){
            rotate([0,0,45]){
             width = 42.3;
                //cube([width,width,5]);
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
             cube([44,10,46]);
         }
         //space for the nut that goes on the threaded rod
        translate([-2.75,-22,height-35]){
             color(colour) 
                cube([12.5,30,6]);
        }
    }
   
            
     //the stepper motor mount
    difference(){
     color(colour)
      translate([32,-56,height+8]){
        rotate([0,0,45]){
            difference(){
                width = 42.3;
                cube([width,width+3,5]);
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
        translate([-2.75,-22,height-35]){
             color(colour) 
                cube([12.5,30,6]);
        }
}