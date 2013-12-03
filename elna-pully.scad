difference() {
	union() {
		translate([0, 0, 9.7])
			cylinder(h=6, r=5.7, $fn=90);

		translate([0, 0, 6.7])
			cylinder(h=3, r=9, $fn=90);

		cylinder(h=6.7, r1=12.5, r2=9.5, $fn=90);
	}

	cylinder(h=17.7, r=3.5, $fn=90);
}