import 'package:webgaz_app/repositories/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "routes.dart";
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => UsuarioModel()),
      ],
      child: MaterialApp(
        title: "WebGaz",
        initialRoute: "/",
        routes: routes,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('pt', 'BR'),
        ],
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.cyan,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black26
            ),
          ),
          appBarTheme: AppBarTheme(
            color: Color.fromRGBO(250, 250, 250, 1),
            elevation: 1
          ),
        ),
      ),
    )
);