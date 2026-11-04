import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Update with your actual package name if different
import 'package:ye_pizza/pages/about_page.dart';

void main() {
  testWidgets('AboutPage displays title and Ye Pizza information', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

    // Verify main components exist on screen
    expect(find.text('About Ye Pizza'), findsOneWidget);
    expect(find.text('Our Story'), findsOneWidget);
    expect(find.text('Wood-Fired Oven'), findsOneWidget);
    expect(find.byIcon(Icons.local_pizza), findsOneWidget);
  });
}
