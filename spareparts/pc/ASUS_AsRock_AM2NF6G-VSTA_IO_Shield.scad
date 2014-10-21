// I/O shield for an ASUS AsRock AM2NF6G-VSTA mainboard.
difference() {
	union() {
		// Default ATX blinds are 160x45mm
		cube([160, 45, 1.5]);

		translate([-0.5, -0.5, 0])
			cube([162, 47, 0.75]);
	}

	// PS/2 ports are about 9.5mm in diameter.
	// Mouse port.
	translate([15.6, 10.7, -0.1])
		cylinder(h = 4, r = 5.2, center=false);

	// Keyboard port.
	translate([32.75, 10.7, -0.1])
		cylinder(h = 4, r = 5.2, center=false);

	// Parallel port.
	translate([22.3, 25, -0.1])
		cube([43.2, 10.7, 4]);

	hull() {
		translate([19.5, 30.7, -0.1])
			cylinder(h = 4, r = 3.2, center=false);
		translate([68.5, 30.7, -0.1])
			cylinder(h = 4, r = 3.2, center=false);
	}

	// The VGA port.
	hull() {
		translate([48.37, 10.7, -0.1])
			cylinder(h = 4, r = 3.2, center=false);
		translate([75.5, 10.7, -0.1])
			cylinder(h = 4, r = 3.2, center=false);
	}

	translate([52.1, 5.36, -0.1])
		cube([20.84, 10.36, 4]);

	// First line of USB ports.
	translate([83.5, 4.3, -0.1])
		cube([15, 17, 4]);

	// Network and USB ports.
	translate([104.2, 4.3, -0.1])
		cube([14.9, 29.64, 4]);

	// GTR Bass.
	translate([131.72, 10, -0.1])
		cylinder(h = 4, r = 4.5, center = false);

	// SIGE SPK.
	translate([131.72, 20.7, -0.1])
		cylinder(h = 4, r = 4.5, center = false);

	// Rear SPK.
	translate([131.72, 32.14, -0.1])
		cylinder(h = 4, r = 4.5, center = false);

	// Mic in.
	translate([151.06, 10, -0.1])
		cylinder(h = 4, r = 4.5, center = false);

	// Front.
	translate([151.06, 20.7, -0.1])
		cylinder(h = 4, r = 4.5, center = false);

	// Line in.
	translate([151.06, 32.14, -0.1])
		cylinder(h = 4, r = 4.5, center = false);
}
