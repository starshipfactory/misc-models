module verschraubungsloch() {
	hull() {
		translate([0, 5.5, 0])
			cylinder(h = 22, r = 2.5, $fn = 20);

		translate([0, 9.5, 0])
			cylinder(h = 22, r = 2.5, $fn = 20);

	}
	translate([-3.75, 0, 4])
	cube ([7.5, 15 ,3]);
}

difference() {
	union() {
		cube(size = [122.5,15,22]);
	
		// Befestigung für Schalter
		translate([86.75, 0, 22])
			cube([6, 15, 4]);
	}

	// Grosser Haken
	translate([22, 3, 0])
	cube(size = [48.7, 8.8, 18.75]);

	// Kleiner Bolzen
	translate([80.25, 2.25, 0])
	cube(size = [21.2, 11.25, 18.5]);

	// Nuten an den Enden zur Justierung
	cube([8.5, 15, 2]);
	translate([0, 6, 0])
		cube([8.5, 4, 22]);

	translate([114, 0, 0]) {
		cube([8.5, 15, 2]);
		translate([0, 6, 0])
			cube([8.5, 4, 22]);
	}

	// Verschraubungslöcher
	translate([14.5, 0, 0]) verschraubungsloch();
	translate([75.5, 0, 0]) verschraubungsloch();
	translate([108.5, 0, 0]) verschraubungsloch();

	// Loch für Schalter
	translate([86, 4.35, 18.5])
		cube([7.5, 6.3, 3.5]);

	// Loch für Gummiband.
	translate([84, -1, 10])
		cube([15, 15, 3.1]);
}
