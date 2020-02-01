import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:flutter_tem_horario/app/app_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tem_horario/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => BottomNavigationBarController()),
        Bloc((i) => AppController())
      ];

  @override
  List<Dependency> get dependencies => [
  ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
