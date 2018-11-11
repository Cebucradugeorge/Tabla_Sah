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
}
}
chess_table();
