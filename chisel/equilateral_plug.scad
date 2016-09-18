include <unit_cylinder.scad>;
include <equilateral_wedge.scad>;

module equilateral_plug() {
	intersection() {
		unit_cylinder();
		equilateral_wedge();
	}
}
