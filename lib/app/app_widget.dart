import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_tem_horario/app/localization.dart';
import 'package:flutter_tem_horario/app/modules/login_and_register/login_and_register_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginAndRegisterModule(),
      supportedLocales: [  
        const Locale('pt', 'BR'),
        const Locale('tr', 'TR'),  
        const Locale('en', 'US')  
      ],
      localizationsDelegates: [  
        const CustomLocalizationsDelegate(),  
        GlobalMaterialLocalizations.delegate,  
        GlobalWidgetsLocalizations.delegate
      ],  
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {  
        for (Locale supportedLocale in supportedLocales) {  
          if (supportedLocale.languageCode == locale.languageCode || supportedLocale.countryCode == locale.countryCode) {  
            return supportedLocale;  
          }   
        }
        return supportedLocales.first;  
      },
    );
  }
}
