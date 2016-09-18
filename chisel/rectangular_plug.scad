include <unit_cylinder.scad>;
include <equilateral_wedge.scad>;

module rectangular_plug() {
	intersection() {
		unit_cylinder();
		equilateral_wedge();
	}
}
