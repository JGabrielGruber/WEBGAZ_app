import 'package:flutter/material.dart';

class DetalheScreen extends StatefulWidget {
	@override
	_DetalheScreeenState createState() => _DetalheScreeenState();
}

class _DetalheScreeenState extends State<DetalheScreen> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Detalhes'),
			),
			body: ListView(
				children: <Widget>[
					Container(
						alignment: Alignment.center,
						child: Image(
							image: AssetImage("assets/webgaz.png"),
							height: 100,
						),
					),
					Container(
						alignment: Alignment.centerLeft,
						padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
						child: Text(
							"Bujão P13",
							style: Theme.of(context).textTheme.bodyText1,
						),
					),
					Container(
						alignment: Alignment.centerLeft,
						padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
						child: Text(
							"Por Gás Voador",
							style: Theme.of(context).textTheme.caption,
						),
					),
					Container(
						alignment: Alignment.centerLeft,
						padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
						child: Text(
							"R\$13,00",
							style: Theme.of(context).textTheme.headline5,
						),
					),
					Container(
						padding: EdgeInsets.fromLTRB(20, 5, 20, 2),
						child: Row(
							crossAxisAlignment: CrossAxisAlignment.center,
							children: <Widget>[
								Container(
									padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
									child: Icon(
										Icons.local_shipping,
									),
								),
								Container(
									alignment: Alignment.centerLeft,
									child: RichText(
										text: TextSpan(
											text: "Chegará entre ",
											style: Theme.of(context).textTheme.bodyText2,
											children: <TextSpan> [
												TextSpan(
													text: "13:00 e 13:05",
													style: TextStyle(fontWeight: FontWeight.bold)
												),
												TextSpan(
													text: " por "
												),
												TextSpan(
													text: "R\$5,00",
													style: TextStyle(fontWeight: FontWeight.bold)
												),
											]
										)
									)
								),
							],
						),
					),
					Container(
						alignment: Alignment.centerLeft,
						padding: EdgeInsets.fromLTRB(54, 2, 20, 2),
						child: Text(
							"Gás Voador, Rua Paralela, Testelandia, SC",
							style: Theme.of(context).textTheme.caption,
						),
					),
					Container(
						padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
						child: InkWell(
							onTap: () {},
							child: Row(
								crossAxisAlignment: CrossAxisAlignment.center,
								children: <Widget>[
									Container(
										padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
										child: Icon(
											Icons.location_on,
											color: Theme.of(context).primaryColor,
										),
									),
									Container(
										alignment: Alignment.centerLeft,
										child: Text(
											"Padaria Testenildo, Rua Obsoleta, Testelandia, SC",
											style: Theme.of(context).textTheme.bodyText2.apply(
												color: Theme.of(context).primaryColor
											),
										),
									),
								],
							),
						),
					),
					Container(
						padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
						child: TextFormField(
							decoration: const InputDecoration(
								prefixText: "Quantia:"
							),
							keyboardType: TextInputType.numberWithOptions(),
							textAlign: TextAlign.end,
							autocorrect: false,
						),
					),
					Container(
						padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
						child: RaisedButton(
							onPressed: () {},
							child: Text("COMPRAR"),
							color: Theme.of(context).primaryColor,
							textColor: Colors.white,
						)
					),
				],
			),
		);
	}
}
