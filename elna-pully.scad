difference() {
	union() {
		translate([0, 0, 11.55700])
			cylinder(h=5.6642, r=7.9375, $fn=60);

		translate([0, 0, 8.7376])
			cylinder(h=2.8194, r=8.89, $fn=60);

		cylinder(h=8.7376, r1=10.6426, r2=8.89, $fn=60);
	}

    translate([0, 8, 13.6])
		rotate([90, 0, 0])
		cylinder(h=16, r=1.75, $fn=40);

	cylinder(h=17.7, r=3.5052, $fn=60);
}
