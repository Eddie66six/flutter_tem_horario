import 'package:flutter_tem_horario/app/modules/menu/schedule/schedule_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/home/home_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_page.dart';

class MenuModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ScheduleController()),
        Bloc((i) => MenuController()),
        Bloc((i) => HomeController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => MenuPage();

  static Inject get to => Inject<MenuModule>.of();
}
