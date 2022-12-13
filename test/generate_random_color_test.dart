import 'package:flutter_test/flutter_test.dart';
import 'package:testing2/color_app.dart';

void main() {
  // Long test method to test the correctness of the generated colors
  for (int index = 1; index <= 100; index++) {
    test("generate color", () {
      expect(
        generateRandomColor().value,
        (int value) => value >= 0xFF000000 && value <= 0xFFFFFFFF,
      );
    });
  }
}
