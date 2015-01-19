difference() {
    union() {
        cylinder(h = 10, r = 5, $center = true, $fn = 40);
        translate([0, 0, -5]) cube(12, center = true);
    }

    translate([0, 0, 3])
        cylinder(h = 11, r = 4.7, $center = true, $fn = 6);
}
