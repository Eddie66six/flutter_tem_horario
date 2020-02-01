
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'bottom_navigation_bar_model.g.dart';

class BottomNavigationBarModel = _BottomNavigationBarModel with _$BottomNavigationBarModel;

abstract class _BottomNavigationBarModel with Store {
  _BottomNavigationBarModel({
    @required this.screenId, @required this.icon, @required this.label, @required this.getPage});
  
  @observable
  bool selected = false;

  int screenId;
  Function getPage;
  IconData icon;
  String label;

  //internal
  int index;

  @action
  void select() {
    this.selected = true;
  }

  @action
  void deselect() {
    this.selected = false;
  }
}
