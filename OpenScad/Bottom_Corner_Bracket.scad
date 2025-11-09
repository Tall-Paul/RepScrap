
difference(){
union(){
//import("C:/Users/tall_/Downloads/z-axis_support_bearing_no_screws.stl");
translate([16,195,20]){
    rotate([90,180,90]){
    import("imports/90_Surface_Bracket_2.stl.stl");
    }
}


translate([175,35,20]){
    rotate([0,0,180]){
    import("imports/90_Surface_Bracket_2.stl.stl");
    }
}


translate([15,35,180]){
    rotate([90,90,180]){
    import("imports/90_Surface_Bracket_2.stl.stl");
    }
}
translate([13,34,-40]){
    cube([7,5,60]);
}
translate([-44,34,18]){
    cube([64,5,6]);
}
translate([16,-25,18]){
cube([4,60,6]);
}
translate([13,-25,20]){
 cube([6,60,4]);
}

}

translate([20,-90,-50]){
    cube([2,120,100]);
}
translate([-50,-90,24]){
    cube([120,120,2]);
}
translate([-24,-30,0]){
     cube([40,20,20]);
}
translate([-44,33,-40]){
cube([60,2,60]);
}
//shave corner
translate([20,25,27]){
    rotate([0,45,45]){
        cube([20,20,5]);
    }
}

}








