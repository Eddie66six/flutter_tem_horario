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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 130,
              width: 130,
              color: Colors.red,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: CustomLocalizations.of(navigatorKey.currentContext).translate("Email")
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: CustomLocalizations.of(navigatorKey.currentContext).translate("Senha")
              ),
              obscureText: true,
            ),
            FlatButton(
              child: Text(CustomLocalizations.of(navigatorKey.currentContext).translate("Entrar")),
              onPressed: _login,
            ),
            Text(CustomLocalizations.of(navigatorKey.currentContext).translate("Esqueci minha senha")),
            Text(CustomLocalizations.of(navigatorKey.currentContext).translate("Ainda não tenho cadastro"))
          ],
        ),
      ),
    );
  }
}
