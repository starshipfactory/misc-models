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

module knoepfe() {
	// Dalek-Knöpfe
	for (z=[-2 : 7]) { // 10 rund herum
			for (i=[0 : 3]) { // 4 ebenen in z-richtung
				if (z>1) { // die vorderen 4 knoepfe
					// 7/20*(5*i+2.5) ist die verjuengung nach oben gesehen
					// 13 der max. radius vom koerper
					// 1.6 ist der streckungsfaktor
					translate([
						1.6*(13-7/20*(5*i+2.5))*cos((z*36+18)),
						(13-7/20*(5*i+2.5))*sin((z*36+18)),
						5*i+2.5]) sphere(r=2); // cube(a=2,center=true);
				} else { // die hinteren knoepfe
					translate([
						(13-7/20*(5*i+2.5))*cos((z*36+18)),
						(13-7/20*(5*i+2.5))*sin((z*36+18)),
						5*i+2.5]) sphere(r=2); // cube(a=2,center=true);
				}
			}
	}
}

union() {
	koerper();
	hals();
	kopf();
	knoepfe();
}
