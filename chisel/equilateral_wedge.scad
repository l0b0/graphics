include <equilateral_triangle.scad>;

module equilateral_wedge() {
	translate([0, 0.5, 0]) {
		rotate([90, 0, 0]) {
			linear_extrude(height = 1) {
				equilateral_triangle();
			}
		}
	}
}
