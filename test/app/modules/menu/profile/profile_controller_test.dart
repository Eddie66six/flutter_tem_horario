import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/menu/profile/profile_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_module.dart';

void main() {
  initModule(MenuModule());

  ProfileController profile;

  setUp(() {
    profile = MenuModule.to.get<ProfileController>();
  });

  group('ProfileController Test', () {
    test("First Test", () {
      expect(profile, isInstanceOf<ProfileController>());
    });

    test("Set Value", () {
      expect(profile.value, equals(0));
      profile.increment();
      expect(profile.value, equals(1));
    });
  });
}
