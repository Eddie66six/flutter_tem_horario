import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_controller.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_module.dart';

class MenuPage extends StatefulWidget {
  MenuPage();
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  MenuController store = MenuModule.to.getBloc<MenuController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(menus: store.menus, callbackChange:  store.chagePage),
      body: Observer(
        builder: (_) => store.currentPage,
      ),
    );
  }
}
