import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/menu/schedule/schedule_page.dart';

main() {
  testWidgets('SchedulePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(SchedulePage(title: 'Schedule')));
    final titleFinder = find.text('Schedule');
    expect(titleFinder, findsOneWidget);
  });
}
