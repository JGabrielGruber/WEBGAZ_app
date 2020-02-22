import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webgaz_app/widgets/indicador.dart';

class Home extends StatefulWidget {
	@override
	_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: GridView.count(
				crossAxisCount: 2,
				children: <Widget>[
					Indicador("Cozinha", 0.099, Colors.cyan),
					Indicador("Quiosque", 0.85, Colors.lime),
					Indicador("Escritório", 0.505, Colors.deepOrange),
				],
			),
			floatingActionButton: FloatingActionButton(
				onPressed: () {
					print("Add");
				},
				child: Icon(Icons.add),
				backgroundColor: Colors.cyan,
			),
		);
	}
}


