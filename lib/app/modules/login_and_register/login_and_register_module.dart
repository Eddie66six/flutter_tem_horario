import 'package:flutter_tem_horario/app/modules/login_and_register/login/login_page.dart';
import 'package:flutter_tem_horario/app/modules/login_and_register/register/register_controller.dart';
import 'package:flutter_tem_horario/app/modules/login_and_register/login/login_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class LoginAndRegisterModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => RegisterController()),
        Bloc((i) => LoginController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => LoginPage();

  static Inject get to => Inject<LoginAndRegisterModule>.of();
}
