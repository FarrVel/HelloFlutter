import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_fruit_app/main.dart';

void main() {
  testWidgets('Flutter Fruit App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApps());

    expect(find.text('Toko Buah'), findsOneWidget);
    expect(find.text('Bayam'), findsOneWidget);
    expect(find.text('Avokat'), findsOneWidget);
  });
}
