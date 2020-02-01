import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_model.dart';
import 'package:mobx/mobx.dart';

part 'bottom_navigation_bar_controller.g.dart';

class BottomNavigationBarController = _BottomNavigationBarBase
    with _$BottomNavigationBarController;

abstract class _BottomNavigationBarBase with Store {
  var menus = List<BottomNavigationBarModel>();
  BottomNavigationBarModel selectedItem;

  init(List<BottomNavigationBarModel> menus){
    this.menus = menus;
    for (var i = 0; i < this.menus.length; i++) {
      this.menus[i].index = i;
      if(this.menus[i].selected){
        this.selectedItem = this.menus[i];
      }
    }
  }

  @action
  void chagePage(BottomNavigationBarModel menuItem, Function callbackChange){
    this.selectedItem.deselect();
    this.selectedItem = menuItem;
    this.selectedItem.select();
    callbackChange(this.selectedItem.getPage());
  }

}
