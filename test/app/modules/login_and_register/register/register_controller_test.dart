import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_tem_horario/app/modules/login_and_register/register/register_controller.dart';
import 'package:flutter_tem_horario/app/modules/login_and_register/login_and_register_module.dart';

void main() {
  initModule(LoginAndRegisterModule());

  RegisterController register;

  setUp(() {
    register = LoginAndRegisterModule.to.get<RegisterController>();
  });

  group('RegisterController Test', () {
    test("First Test", () {
      expect(register, isInstanceOf<RegisterController>());
    });

    test("Set Value", () {
      expect(register.value, equals(0));
      register.increment();
      expect(register.value, equals(1));
    });
  });
}
