include <isosceles_triangle.scad>;

module isosceles_wedge() {
	translate([0, 0.5, 0]) {
		rotate([90, 0, 0]) {
			linear_extrude(height = 1) {
				isosceles_triangle();
			}
		}
	}
}
