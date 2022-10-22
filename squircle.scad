module squircle (size, r) {
  minkowski () {
    square([size[0] - 2 * r, size[1] - 2 * r]);
    translate([r, r]) circle(r = r);
  }
};
