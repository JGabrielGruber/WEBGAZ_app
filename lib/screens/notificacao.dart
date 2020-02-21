import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webgaz_app/widgets/notificacao.dart';

class NotificacaoScreen extends StatefulWidget {
  @override
  _NotificacaoScreenState createState() => _NotificacaoScreenState();
}

class _NotificacaoScreenState extends State<NotificacaoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações'),
      ),
      body: ListView(
        children: <Widget>[
          Notificacao(Icons.error, "Butijão da Cozinha está abaixo de 10%!"),
        ],
      ),
    );
  }
}
