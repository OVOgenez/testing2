import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing2/color_app.dart';

void main() {
  // Test method to test the correctness of the inverted colors
  test("invert color white -> black", () {
    expect(invertColor(Color(0xFFFFFFFF)), equals(Color(0xFF000000)));
  });
  test("invert color black -> white", () {
    expect(invertColor(Color(0x0)), equals(Color(0xFFFFFFFF)));
  });
  test("invert color transparent white -> black", () {
    expect(invertColor(Color(0xFFFFFF)), equals(Color(0xFF000000)));
  });
  test("invert color transparent black -> white", () {
    expect(invertColor(Color(0xFF000000)), equals(Color(0xFFFFFFFF)));
  });
  test("invert color red -> 00ffff", () {
    expect(invertColor(Color(0xFF0000)), equals(Color(0xFF00FFFF)));
  });
  test("invert color green -> ff00ff", () {
    expect(invertColor(Color(0x00FF00)), equals(Color(0xFFFF00FF)));
  });
  test("invert color blue -> ffff00", () {
    expect(invertColor(Color(0x0000FF)), equals(Color(0xFFFFFF00)));
  });
  test("invert color", () {
    expect(invertColor(Color(0xFF381A9F)), equals(Color(0xFFC7E560)));
  });
  test("invert color", () {
    expect(invertColor(Color(0xFF1DBDD7)), equals(Color(0xFFE24228)));
  });
  test("invert color", () {
    expect(invertColor(Color(0xFFA7EA52)), equals(Color(0xFF5815AD)));
  });
}
