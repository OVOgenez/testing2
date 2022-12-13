import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing2/color_app.dart';

void main() {
  /// Returns AnimatedContainer color
  Color? getContainerColor(WidgetTester tester) {
    final animatedContainer =
        tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));

    return (animatedContainer.decoration as BoxDecoration).color;
  }

  // Test method for checking color change on tap
  testWidgets('AnimatedContainer color', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(const ColorApp());

    // Hold widget color
    final initColor = getContainerColor(tester);

    // Tap widget and trigger frame
    await tester.tap(find.byType(AnimatedContainer));
    await tester.pump(const Duration(milliseconds: 250));

    // Verify color mismatch
    expect(getContainerColor(tester), isNot(equals(initColor)));
  });
}
