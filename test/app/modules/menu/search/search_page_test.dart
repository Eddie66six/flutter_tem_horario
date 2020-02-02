import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/menu/search/search_page.dart';

main() {
  testWidgets('SearchPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SearchPage(title: 'Search')));
    final titleFinder = find.text('Search');
    expect(titleFinder, findsOneWidget);
  });
}
