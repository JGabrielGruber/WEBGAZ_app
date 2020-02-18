import 'package:cached_network_image/cached_network_image.dart';
import 'package:webgaz_app/repositories/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

	@override
	Widget build(BuildContext context) {
		return DefaultTabController(
			length: 3,
			child: Scaffold(
				appBar: AppBar(
					title: GestureDetector(
						onTap: () {
							Navigator.of(context).pushNamed("/main/perfil");
						},
						child: Row(
							crossAxisAlignment: CrossAxisAlignment.center,
							children: <Widget>[
								Provider.of<UsuarioModel>(context).usuario.photoUrl != null ?
								new ClipRRect(
									borderRadius: new BorderRadius.circular(180.0),
									child: CachedNetworkImage(
										imageUrl: Provider.of<UsuarioModel>(context, listen: true).usuario.photoUrl,
										placeholder: (context, url) => CircularProgressIndicator(),
										width: 40,
										height: 40,
									),
								) :
								Icon(
									Icons.account_circle,
									size: 40,
								),
								Padding(
									padding: EdgeInsets.all(5),
									child: Text(
										Provider.of<UsuarioModel>(context).usuario.displayName,
									),
								),
							],
						),
					),
				),
				body: DashboardScreen(),
			)
		);
	}
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

	@override
	Widget build(BuildContext context) {
		return SingleChildScrollView(
			scrollDirection: prefix0.Axis.vertical,
			child: Container(
				padding: EdgeInsets.all(20),
				child: Text(
					"AAAAAA"
				),
			),
		);
	}
}