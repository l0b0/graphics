include <unit_cylinder.scad>;

module elliptic_cylinder() {
	scale([1, sqrt(3)/2, 1]) {
        unit_cylinder();
    }
}
