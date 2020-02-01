import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:flutter_tem_horario/app/app_module.dart';

void main() {
  initModule(AppModule());

  BottomNavigationBarController bottomnavigationbar;

  setUp(() {
    bottomnavigationbar = AppModule.to.get<BottomNavigationBarController>();
  });

  group('BottomNavigationBarController Test', () {
    test("First Test", () {
      expect(
          bottomnavigationbar, isInstanceOf<BottomNavigationBarController>());
    });

    // test("Set Value", () {
    //   expect(bottomnavigationbar.value, equals(0));
    //   bottomnavigationbar.increment();
    //   expect(bottomnavigationbar.value, equals(1));
    // });
  });
}
