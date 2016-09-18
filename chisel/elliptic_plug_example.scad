include <unit_cylinder.scad>;
include <elliptic_plug.scad>;

$vpr = [0, 0, 90];
$vpt = [0, 0, 0.5];
$vpd = 3;

%unit_cylinder();
elliptic_plug();
