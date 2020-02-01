import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/menu/schedule/schedule_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_module.dart';

void main() {
  initModule(MenuModule());

  ScheduleController schedule;

  setUp(() {
    schedule = MenuModule.to.get<ScheduleController>();
  });

  group('ScheduleController Test', () {
    test("First Test", () {
      expect(schedule, isInstanceOf<ScheduleController>());
    });

    test("Set Value", () {
      expect(schedule.value, equals(0));
      schedule.increment();
      expect(schedule.value, equals(1));
    });
  });
}
