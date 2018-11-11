epsilon=0.1;
module chess_table(){
union(){
translate([7,7,0]){
    color ("Blue") {
cube([30,30,2]);
translate([3,3,2]) cube([24,24,2]);
translate([6,6,4]) cube([18,18,2]);
translate([9,9,6]) cube([12,12,30]);
    }
}
difference(){
    color ("Blue")
translate([0,0,36]) cube([44,44,3]);
translate([2,2,38+epsilon]) cube([40,40,1]);
}
for(x=[0:7])
    for(y=[0:7])
        if((x + y) % 2 == 0) {
			color("Black")		          
translate([x*5+2,y*5+2,38-epsilon])  cube([5-epsilon,5-epsilon,3*epsilon]);
       }
        else {
			color("White")		      
translate([x*5+2,y*5+2,38-epsilon]) cube([5-2*epsilon,5-2*epsilon,3*epsilon]);
       }
for(x=[1:8])
    for(y=[2:2])
        if((x + y) % 2 == 0) {
			color("White")		          
translate([x*5-0.5,y*5-0.5,38-epsilon]) scale([0.2,0.2,0.2]) pawn();
       }
        else {
			color("White")		      
translate([x*5-0.5,y*5-0.5,38-epsilon]) scale([0.2,0.2,0.2]) pawn();
       }  
for(x=[1:8])
    for(y=[7:7])
        if((x + y) % 2 == 0) {
			color("Gold")		          
translate([x*5-0.5,y*5-0.5,38-epsilon]) scale([0.2,0.2,0.2]) pawn();
       }
        else {
			color("Gold")		      
translate([x*5-0.5,y*5-0.5,38-epsilon]) scale([0.2,0.2,0.2]) pawn();
       }  

}
}
module pawn(){
cylinder(1,10,10);
translate([0,0,1])
cylinder(1, 9.7,9,7);
translate([0,0,2])
cylinder(1,9.4,9.4);
translate([0,0,3])
// making the sphere and removing the extra part of the sphere
difference(){
sphere(9);
    translate([0,0,-9])
    // remove the section of the base sphere below the x axis
        cylinder(6,9,9);
        }
        // center shaft
translate([0,0,3])
cylinder(15,4.5,4.5);
// cone widening-shaped cylinder
translate([0,0,18])
cylinder(5,5,9.4);
// cone narrowing-shaped cylinder
translate([0,0,23])
cylinder(5,9.4,5);
// top
translate([0,0,28])
sphere(4.5);


}
chess_table();














