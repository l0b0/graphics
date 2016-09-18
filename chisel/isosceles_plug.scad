include <unit_cylinder.scad>;
include <isosceles_wedge.scad>;

module isosceles_plug() {
    scale(sqrt(3)/2) {
        intersection() {
            unit_cylinder();
            isosceles_wedge();
        }
    }
}
