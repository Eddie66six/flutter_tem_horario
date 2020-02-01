import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/login_and_register/register/register_page.dart';

main() {
  testWidgets('RegisterPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(RegisterPage(title: 'Register')));
    final titleFinder = find.text('Register');
    expect(titleFinder, findsOneWidget);
  });
}
