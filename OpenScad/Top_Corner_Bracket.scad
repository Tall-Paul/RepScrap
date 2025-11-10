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
translate([-24,15,0]){
 cube([40,20,20]);
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

zaxis();


}

/*
translate([20,-90,-50]){
    cube([2,120,100]);
}
translate([-50,-90,24]){
    cube([120,120,2]);
}
translate([-24,-35,0]){
     cube([40,20,20]);
}
translate([-44,33,-40]){
cube([60,2,60]);
}
*/
//shave corner

shave();
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
  






