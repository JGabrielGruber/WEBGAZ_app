import 'package:webgaz_app/screens/detalhes.dart';
import 'package:webgaz_app/screens/login.dart';
import 'package:webgaz_app/screens/main.dart';
import 'package:webgaz_app/screens/notificacao.dart';
import 'package:webgaz_app/screens/perfil.dart';
import 'package:webgaz_app/screens/signup.dart';
import 'package:flutter/material.dart';

var routes = {
	"/": (BuildContext context) => LoginScreen(),
	"/signup": (BuildContext context) => SignupScreen(),
	"/main": (BuildContext context) => MainScreen(),
	"/main/perfil": (BuildContext context) => PerfilScreen(),
	"/main/detalhe": (BuildContext context) => DetalheScreen(),
	"/main/notificacao": (BuildContext context) => NotificacaoScreen(),
};