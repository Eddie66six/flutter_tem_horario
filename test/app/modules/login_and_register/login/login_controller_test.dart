import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/login_and_register/login/login_controller.dart';
import 'package:flutter_tem_horario/app/modules/login_and_register/login_and_register_module.dart';

void main() {
  initModule(LoginAndRegisterModule());

  LoginController login;

  setUp(() {
    login = LoginAndRegisterModule.to.get<LoginController>();
  });

  group('LoginController Test', () {
    test("First Test", () {
      expect(login, isInstanceOf<LoginController>());
    });

    test("Set Value", () {
      expect(login.value, equals(0));
      login.increment();
      expect(login.value, equals(1));
    });
  });
}
