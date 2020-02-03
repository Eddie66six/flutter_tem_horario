import 'package:flutter/material.dart';
import 'package:flutter_tem_horario/app/localization.dart';

class SchedulePage extends StatefulWidget {
  final String title;
  const SchedulePage({Key key, this.title = "Schedule"}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
    _buildCardNextAppointmentTitle() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(CustomLocalizations.of(navigatorKey.currentContext).translate("Próximos agendamentos")),
    );
  }

  _buildDashed(double sizeContent, Color backgroundColor){
    var size = sizeContent/15;
    return Container(
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(size.toInt(), (index) => 
          Container(
            color: Colors.black54, height: 1, width: sizeContent/size-4,
            margin: EdgeInsets.symmetric(horizontal: 2)
          )
        ),
      ),
    );
  }

  _buildCardNextAppointment(String title, String subTitle, bool insertDivider, bool first, bool last) {
    var width = MediaQuery.of(context).size.width-10;
    var borderTop = first? 10.0 : 0.0;
    var borderBottom = last? 10.0 : 0.0;
    return Container(
      margin: EdgeInsets.only(bottom: last? 10 : 0),
      width: width,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderBottom),
          bottomRight: Radius.circular(borderBottom),
          topLeft: Radius.circular(borderTop),
          topRight: Radius.circular(borderTop)
        )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(title,
                    overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(subTitle,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                insertDivider ? _buildDashed(width, Colors.blueAccent) : SizedBox()
              ],
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lenght = 2;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _buildCardNextAppointmentTitle(),
            Expanded(
              child: ListView(
                children: List.generate(lenght, (index) => 
                _buildCardNextAppointment(
                  "Salao: seila unhas bla bla bla" + index.toString(),
                  "${index + 1}/01/2020 12:00",
                  index < lenght -1, index == 0, index == lenght -1))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
