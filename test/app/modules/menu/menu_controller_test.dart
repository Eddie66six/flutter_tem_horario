import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/menu/menu_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_module.dart';

void main() {
  initModule(MenuModule());

  MenuController menu;

  setUp(() {
    menu = MenuModule.to.get<MenuController>();
  });

  group('MenuController Test', () {
    test("First Test", () {
      expect(menu, isInstanceOf<MenuController>());
    });

    // test("Set Value", () {
    //   expect(menu.value, equals(0));
    //   menu.increment();
    //   expect(menu.value, equals(1));
    // });
  });
}
