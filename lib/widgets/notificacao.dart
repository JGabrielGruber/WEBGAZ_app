import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notificacao extends StatefulWidget {

	final IconData icone;
	final String titulo;
	final bool lida;

	Notificacao(this.icone, this.titulo, {this.lida=false});

	@override
	_NotificacaoState createState() => _NotificacaoState();
}

class _NotificacaoState extends State<Notificacao> {
	@override
	Widget build(BuildContext context) {
		return Card(
			child: Row(
				children: <Widget>[
					Container(
						padding: EdgeInsets.all(10),
						child: Icon(
							widget.icone
						),
					),
					Container(
						padding: EdgeInsets.all(10),
						child: Text(
							widget.titulo,
							style: Theme.of(context).textTheme.button,
						),
					),
					Badge(
						showBadge: !widget.lida,
					)
				],
			),
		);
	}
}
