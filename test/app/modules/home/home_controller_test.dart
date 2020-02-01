import 'package:flutter_tem_horario/app/modules/menu/home/home_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

void main() {
  initModule(MenuModule());

  HomeController home;

  setUp(() {
    home = MenuModule.to.get<HomeController>();
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

    test("Set Value", () {
      expect(home.value, equals(0));
      home.increment();
      expect(home.value, equals(1));
    });
  });
}
