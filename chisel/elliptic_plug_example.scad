include <equilateral_plug.scad>;
include <elliptic_plug.scad>;

$vpr = [0, 0, 90];
$vpt = [0, 0, 0.5];
$vpd = 3;

%equilateral_plug();
elliptic_plug();
