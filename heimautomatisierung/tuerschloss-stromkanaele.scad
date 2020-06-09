difference() {
	// The outer part
	union() {
		cube([20, 26.5, 3.8]);
		translate([-2, 0, 0])
			cube([24, 8, 5.9]);
	}

	// Mounting hole for the door
	hull() {
		translate([6.7, 19.9, 0])
			cylinder(r=4.1, h=3.8, $fn=35);
		translate([13.3, 19.9, 0])
			cylinder(r=4.1, h=3.8, $fn=35);
		translate([10, 20.5, 0])
			cylinder(r=4.7, h=3.8, $fn=35);
	}

	// Holes for running the wires
	rotate([270, 0, 0]) {
		hull() {
			translate([1.6, -0.7, -0.1])
				cylinder(h=26.7, r=0.875, $fn=10);
			translate([1.6, 0.7, -0.1])
				cylinder(h=26.7, r=0.875);
		}
		hull() {
			translate([18.4, -0.7, -0.1])
				cylinder(h=26.7, r=0.875, $fn=10);
			translate([18.4, 0.7, -0.1])
				cylinder(h=26.7, r=0.875);
		}
	}
}
