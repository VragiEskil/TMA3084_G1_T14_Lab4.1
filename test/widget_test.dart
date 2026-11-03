import 'package:flutter_test/flutter_test.dart';
import 'package:ye_pizza/main.dart'; // Adjust package name if using wow_pizza

void main() {
  testWidgets('App smoke test loads successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PizzaStoreApp());

    // Verify that the home page or app title exists
    expect(find.text('ye Pizza'), findsOneWidget);
  });
}
