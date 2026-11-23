import 'package:flutter_test/flutter_test.dart';
import 'package:student_profile/main.dart';

void main() {
  testWidgets('Student Profile smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const StudentProfileApp());

    expect(find.text('Profil Mahasiswa'), findsOneWidget);
    expect(find.text('Edit Profil'), findsOneWidget);
  });
}
