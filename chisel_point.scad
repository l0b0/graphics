module unit_cylinder() {
	cylinder(
		h = 1,
		r1 = 0.5,
		r2 = 0.5,
		$fn = 50
	);
}

module isosceles_triangle() {
	polygon(
		points = [[-0.5, 0], [0.5, 0], [0, 1]],
		paths = [[0, 1, 2]]
	);
}

module equilateral_triangle() {
	polygon(
		points = [[-0.5, 0], [0.5, 0], [0, sqrt(3) / 2]],
		paths = [[0, 1, 2]]
	);
}

module isosceles_wedge() {
	translate([0, 0.5, 0]) {
		rotate([90, 0, 0]) {
			linear_extrude(height = 1) {
				isosceles_triangle();
			}
		}
	}
}

module equilateral_wedge() {
	translate([0, 0.5, 0]) {
		rotate([90, 0, 0]) {
			linear_extrude(height = 1) {
				equilateral_triangle();
			}
		}
	}
}

module isosceles_plug() {
	intersection() {
		unit_cylinder();
		isosceles_wedge();
	}
}

module equilateral_plug() {
	intersection() {
		unit_cylinder();
		equilateral_wedge();
	}
}

translate([-0.6, 0, 0]) {
	%equilateral_wedge();
	isosceles_plug();
}

translate([0.6, 0, 0]) {
	%unit_cylinder();
	equilateral_plug();
}
