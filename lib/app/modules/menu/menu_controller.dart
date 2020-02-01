import 'package:flutter/material.dart';
import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_model.dart';
import 'package:flutter_tem_horario/app/localization.dart';
import 'package:flutter_tem_horario/app/modules/menu/home/home_page.dart';
import 'package:flutter_tem_horario/app/modules/menu/schedule/schedule_page.dart';
import 'package:mobx/mobx.dart';

part 'menu_controller.g.dart';

class MenuController = _MenuBase with _$MenuController;

abstract class _MenuBase with Store {

  _MenuBase(){
    this.menus = List<BottomNavigationBarModel>();
    this.menus.add(BottomNavigationBarModel(screenId: 0, icon: Icons.home, 
      	label: CustomLocalizations.of(navigatorKey.currentContext).translate("Home"), getPage: ()=>HomePage()));
    this.menus.add(BottomNavigationBarModel(screenId: 1, icon: Icons.calendar_today,
        label: CustomLocalizations.of(navigatorKey.currentContext).translate("Agenda"), getPage: ()=>SchedulePage()));

    this.menus.add(BottomNavigationBarModel(screenId: 2, icon: Icons.access_alarm, 
      	label: CustomLocalizations.of(navigatorKey.currentContext).translate("Seila"), getPage: ()=>HomePage()));
    this.menus.add(BottomNavigationBarModel(screenId: 3, icon: Icons.accessibility_new,
        label: CustomLocalizations.of(navigatorKey.currentContext).translate("Seila"), getPage: ()=>SchedulePage()));

    this.currentPage = this.menus[0].getPage();
    this.menus[0].select();
  }
  List<BottomNavigationBarModel> menus;

  @observable
  Widget currentPage;

  @action
  void chagePage(Widget newPage) {
    this.currentPage = newPage;
  }
}
