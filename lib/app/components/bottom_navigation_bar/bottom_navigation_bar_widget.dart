import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tem_horario/app/app_module.dart';
import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:flutter_tem_horario/app/components/bottom_navigation_bar/bottom_navigation_bar_model.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final List<BottomNavigationBarModel> menus;
  final Color backgroundColor;
  final Color labelColor;
  final Color selectedColor;
  final Function callbackChange;
  BottomNavigationBarWidget(
      {Key key,
      @required this.menus,
      this.backgroundColor = Colors.blueGrey,
      this.labelColor = Colors.black,
      this.selectedColor = Colors.black12,
      @required this.callbackChange})
      : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final store = AppModule.to.getBloc<BottomNavigationBarController>();

  @override
  void initState() {
    super.initState();
    store.init(widget.menus);
  }

  @override
  Widget build(BuildContext context) {
    var selectedWidth = MediaQuery.of(context).size.width / store.menus.length;
    return Observer(
      builder: (_) => Container(
        height: 60,
        decoration:
            BoxDecoration(color: Colors.transparent, boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 2,
              offset: Offset(0, -3))
        ]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                store.menus.length,
                (index) => InkWell(
                    onTap: () {
                      store.chagePage(
                          store.menus[index], widget.callbackChange);
                    },
                    child: Container(
                        color: store.menus[index].selected
                            ? widget.selectedColor
                            : widget.backgroundColor,
                        width: selectedWidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(store.menus[index].icon,
                                size: store.menus[index].selected ? 35 : 24),
                            store.menus[index].selected
                                ? SizedBox()
                                : Text(store.menus[index].label,
                                    textAlign: TextAlign.center)
                          ],
                        ))))),
      ),
    );
  }
}
