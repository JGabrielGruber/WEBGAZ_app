import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Anuncio extends StatefulWidget {

	@override
	_AnuncioState createState() => _AnuncioState();
}

class _AnuncioState extends State<Anuncio> {
	@override
	Widget build(BuildContext context) {
		return Container(
			child: Card(
				elevation: 2,
				margin: EdgeInsets.all(15),
				child: InkWell(
					onTap: () {},
					child: Padding(
						padding: EdgeInsets.all(10),
						child: Column(
							children: <Widget>[
								Image(
									image: AssetImage("assets/webgaz.png"),
									height: 80,
									alignment: Alignment.topCenter,
								),
								Container(
									padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
									alignment: Alignment.centerLeft,
									child: Text(
										"Butijão P13",
										style: Theme.of(context).textTheme.bodyText2,
									),
								),
								Container(
									padding: EdgeInsets.all(3),
									alignment: Alignment.centerLeft,
									child: Text(
										"R\$20,00",
										style: Theme.of(context).textTheme.subtitle2,
										textAlign: TextAlign.start,
									),
								),
								Container(
									padding: EdgeInsets.all(2),
									child: Row(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											Icon(
												Icons.local_shipping,
												size: 13,
											),
											Text(
												"R\$5,00",
												style: Theme.of(context).textTheme.caption,
											),
										],
									),
								),
								Container(
									padding: EdgeInsets.all(2),
									child: Row(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											Icon(
												Icons.timer,
												size: 13,
											),
											Text(
												"5 à 10 minutos",
												style: Theme.of(context).textTheme.caption,
											),
										],
									),
								),
							],
						)
					),
				),
			)
		);
	}
}
