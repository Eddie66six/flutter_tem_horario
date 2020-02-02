import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/menu/search/search_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_module.dart';

void main() {
  initModule(MenuModule());

  SearchController search;

  setUp(() {
    search = MenuModule.to.get<SearchController>();
  });

  group('SearchController Test', () {
    test("First Test", () {
      expect(search, isInstanceOf<SearchController>());
    });

    test("Set Value", () {
      expect(search.value, equals(0));
      search.increment();
      expect(search.value, equals(1));
    });
  });
}
