import 'package:flutter/material.dart';
import 'package:flutter_tem_horario/app/localization.dart';
import 'package:flutter_tem_horario/app/modules/menu/menu_module.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  _login() async{
    //altera a lingua antes de entrar
    await CustomLocalizations.of(navigatorKey.currentContext).load(Locale("pt","BR"));

    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> MenuModule()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text(CustomLocalizations.of(navigatorKey.currentContext).translate("Entrar")),
            onPressed: _login,
          )
        ],
      ),
    );
  }
}
