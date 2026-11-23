import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/main.dart';

void main() {
  testWidgets('Hello Flutter smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Mobile Programming'), findsOneWidget);
    expect(find.text('Hello Flutter!'), findsOneWidget);
    expect(find.byType(FlutterLogo), findsOneWidget);
  });
}
