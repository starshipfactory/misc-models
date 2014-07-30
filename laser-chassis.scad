chassis_height = 1000;
chassis_length = 1500;
chassis_width = 2500;

// The laser tube.
// TODO: How will it be attached?
translate([-900, 100, chassis_height - 200])
	rotate([0, 90, 0]) color(0.8, 0.8, 0.8, 1.0) {
		difference() {
			cylinder(h=2000, r=80);

			difference() {
				translate([0, 0, -1]) cylinder(h=81, r=82);
				cylinder(h=84, r1=0, r2=80);
			}
		}
	}

// Backside mirror.
translate([-chassis_width/2+100, 100, chassis_height-210])
	rotate([90, 0, 45])
		cylinder(h=5, r=10);

// Left chassis motor for moving the laser forward and backward.
translate([-chassis_width/2+25, -chassis_length+260, chassis_height-60]) {
	translate([0, 0, 50])
		cube([100, chassis_length-350, 5]);
	translate([0, 0, -50])
		cube([100, chassis_length-350, 5]);
	translate([0, chassis_length-350, 0])
		rotate([90, 0, 90])
			cylinder(h=100, r=50);
	rotate([90, 0, 90])
		cylinder(h=100, r=50);
}

// Rubber band for making the engine go left/right.
translate([-chassis_width/2+100, -2*chassis_length/3+205, chassis_height-200]) {
	union() {
		cube([chassis_width-200, 100, 5]);
		translate([0, 0, 100]) cube([chassis_width-200, 100, 5]);
		translate([0, 100, 50])
			rotate([90, 0, 0])
				cylinder(h=100, r=50);
		translate([chassis_width-200, 100, 50])
			rotate([90, 0, 0])
				cylinder(h=100, r=50);
	}
}

// Transporter mount for the mirror transport band.
translate([-chassis_width/2+25, -2*chassis_length/3+95, chassis_height-200]) {
	cube([chassis_width-50, 100, 100]);
}

// The chassis itself.
union() {
	// Separating wall between laser and main chassis.
	color([1, 1, 1, 0.5]) difference() {
		translate([-chassis_width/2, 0, 0])
			%cube([chassis_width, 10, chassis_height]);
		translate([-chassis_width/2, -2, chassis_height-300])
			%cube([201, 14, 201]);
	}

	// Bottom plate.
	color([1, 1, 1, 0.5]) translate([-chassis_width/2, -chassis_length + 200, 0])
		%cube([chassis_width, chassis_length, 10]);

	// Back plane.
	color([1, 1, 1, 0.5]) translate([-chassis_width/2, 200, 0])
		%cube([chassis_width, 10, chassis_height]);

	// Top plate.
   color([1, 1, 1, 0.3])
		translate([-chassis_width/2, -chassis_length+205, chassis_height])
			%cube([chassis_width, chassis_length + 10, 10]);

	// Left plate.
	color([1, 1, 1, 0.3]) translate([-chassis_width/2, -chassis_length+205, 0])
		%cube([10, chassis_length+10, chassis_height]);

	// Right plate.
	color([1, 1, 1, 0.3]) translate([chassis_width/2, -chassis_length+205, 0])
		%cube([10, chassis_length+10, chassis_height]);

	// Front plate.
	color([1, 1, 1, 0.3]) translate([-chassis_width/2, -chassis_length+205, 0])
		%cube([chassis_width, 10, chassis_height]);
}
