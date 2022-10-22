use <squircle.scad>;
include <parameters.scad>;

module pot () {
  linear_extrude (t) {
    difference () {
      squircle([w, l], r);
      translate([w / 4, l / 4]) circle(d = drainage_d);
      translate([w * 3/ 4, l /4]) circle(d = drainage_d);
      translate([w / 4, l * 3/4]) circle(d = drainage_d);
      translate([w * 3/4, l * 3/4]) circle(d = drainage_d);
    }
  }

  translate([0, 0, t]) {
    linear_extrude (h) {
      difference () {
        squircle([w, l], r);
        translate([t, t]) squircle([w - 2 * t, l - 2 * t], r);
      }
    }
  }
}

pot();
