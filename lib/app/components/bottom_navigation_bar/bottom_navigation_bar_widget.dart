import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tem_horario/app/app_module.dart';
import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_model.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final List<BottomNavigationBarModel> menus;
  final Color backgroundColor;
  final Color selectedColor;
  final Function callbackChange;
  BottomNavigationBarWidget({Key key, @required this.menus, this.backgroundColor = Colors.lightGreen,
    this.selectedColor = Colors.grey, @required this.callbackChange}) : super(key: key);

  final store = AppModule.to.getBloc<BottomNavigationBarController>();
  @override
  Widget build(BuildContext context) {
    store.init(menus);
    return Observer(
      builder: (_)=> Row(
        children: List.generate(store.menus.length, (index)=>
          InkWell(
            onTap: (){store.chagePage(store.menus[index], callbackChange);},
            child: 
            Text(store.menus[index].label, style: TextStyle(color: store.menus[index].selected ? Colors.red : Colors.black))
          )
        )
      ),
    );
  }
}
