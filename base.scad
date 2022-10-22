use <squircle.scad>;
include <parameters.scad>;

module base () {
  base_w = w + base_fit;
  base_l = l + base_fit;

  linear_extrude(t) squircle([base_w, base_l], r);

  translate([0, 0, t]) {
    translate([base_w / 4 - base_fit, base_l / 4 - base_fit]) sphere(d = drainage_d);
    translate([base_w * 3/ 4 + base_fit, base_l / 4 - base_fit]) sphere(d = drainage_d);
    translate([base_w / 4 - base_fit, base_l * 3/4 + base_fit]) sphere(d = drainage_d);
    translate([base_w * 3/4 + base_fit, base_l * 3/4 + base_fit]) sphere(d = drainage_d);

    linear_extrude (base_h) {
      difference () {
        squircle([base_w, base_l], r);
        translate([t, t]) squircle([base_w - 2 * t, base_l - 2 * t], r);
      }
    }
  }
}

base();
