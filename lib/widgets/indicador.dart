import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicador extends StatefulWidget {

	final String _nome;
	final double _quantidade;
	final Color _cor;

	Indicador(this._nome, this._quantidade, this._cor);

	@override
	_IndicadorState createState() => _IndicadorState();
}

class _IndicadorState extends State<Indicador> {
	@override
	Widget build(BuildContext context) {
		return Container(
			child: Card(
				elevation: 2,
				margin: EdgeInsets.all(20),
				child: InkWell(
					onTap: () {},
					child: Padding(
						padding: EdgeInsets.all(10),
						child: Stack(
							fit: StackFit.expand,
							children: <Widget>[
								CircularProgressIndicator(
									strokeWidth: 8,
									value: widget._quantidade,
									backgroundColor: Colors.black12,
									valueColor: AlwaysStoppedAnimation<Color>(widget._cor),
								),
								Column(
									mainAxisAlignment: MainAxisAlignment.center,
									crossAxisAlignment: CrossAxisAlignment.center,
									children: <Widget>[
										Text(
											"${widget._quantidade * 100}%",
											style: TextStyle(
												fontSize: 30,
											),
										),
										Text(widget._nome)
									],
								),
							],
						),
					),
				)
			),
		);
	}
}
