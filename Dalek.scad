module koerper() {
	difference() {
		scale([1.6,1,1]) 
			cylinder(r1=13, r2=6, h=20, $fn=10);
		translate([0, -15, 0]) cube(30);
	}
	cylinder(r1=13, r2=6, h=20, $fn=10);
}
module hals() {
	difference() {
		//translate([0, 0, 20]) scale([1.6,1,1]) cylinder(r1=6, r2=6, h=5, $fn=10);
		//translate([0, -15, 0]) cube(30);
	}
	translate([0, 0, 20]) cylinder(r1=6, r2=6, h=5, $fn=10);
}
module kopf() {
	difference() {
		//translate([0, 0, 25]) scale([1.6,1,1]) sphere(r=6, $fn=10);
		//translate([0, -6, 19]) cube(12);
	}
	translate([0, 0, 25]) sphere(r=6, $fn=10);
}

union() {
	koerper();
	hals();
	kopf();


	// Dalek-Knöpfe
	for (z=[-2 : 7]) {
		rotate(a=[0, 0, z*36+18]) {
			for (i=[0 : 3]) {
				if (z>1) {
					translate([
						sqrt(
							pow(1.6*13*cos((36*z)+18), 2) + pow(13*sin((z*36)+18), 2)
						),
						0,
						5*i+2.5]) sphere(r=2);
//					translate([1.6*(12-(35*i+17.5)/20), 0, 5*i+2.5])
//						sphere(r=2);
				} else {
					translate([12-(35*i+17.5)/20, 0, 5*i+2.5]) 
						sphere(r=2);
				}
			}
		}
	}

}
