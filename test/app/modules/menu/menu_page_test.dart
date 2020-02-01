import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/menu/menu_page.dart';

main() {
  testWidgets('MenuPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(MenuPage()));
    final titleFinder = find.text('Menu');
    expect(titleFinder, findsOneWidget);
  });
}
