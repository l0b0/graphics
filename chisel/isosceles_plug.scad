include <unit_cylinder.scad>;
include <isosceles_wedge.scad>;

module isosceles_plug() {
	intersection() {
		unit_cylinder();
		isosceles_wedge();
	}
}
