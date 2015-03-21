union() {
	translate([0, 50, 0]) {
		difference() {
			union() {
				translate([0, 0, 10])
					cylinder(h=5, r2=20, r1=25);
			
				cylinder(h=10, r=25);
			
				cylinder(h=5, r=35);
			}
		
			cylinder(h=15, r=6);

			cylinder(h=3, r=10);
		}
	}
	
	translate([0, -50, 0]) {
		difference() {
			union() {
				translate([0, 0, 10])
					cylinder(h=5, r2=20, r1=25);
			
				cylinder(h=10, r=25);
			
				cylinder(h=5, r=35);
			}
		
			cylinder(h=15, r=6);

			cylinder(h=3, r=10);
		}
	}

	difference() {
		translate([0, -50, 0])
			cube([35, 100, 35]);

		translate([0, -50, 0]) {
			cylinder(h=35, r=35);
		}

		translate([0, 50, 0]) {
			cylinder(h=35, r=35);
		}

		translate([7, -50, 15])
			cube([23, 100, 20]);
	}
}