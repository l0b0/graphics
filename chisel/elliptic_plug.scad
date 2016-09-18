include <elliptic_cylinder.scad>;
include <equilateral_wedge.scad>;

module elliptic_plug() {
	intersection() {
		elliptic_cylinder();
		equilateral_wedge();
	}
}
