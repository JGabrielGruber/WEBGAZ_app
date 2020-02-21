import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/painting.dart';
import 'package:webgaz_app/repositories/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webgaz_app/screens/consumo.dart';
import 'package:webgaz_app/screens/home.dart';
import 'package:webgaz_app/screens/market.dart';

class MainScreen extends StatefulWidget {
	@override
	_MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

	int _selectedIndex = 0;
	List<Widget> _widgetsTitles = <Widget>[
		Text("Home"),
		Text("Consumo"),
		Text("Marketplace"),
	];
	static List<Widget> _widgetsOptions = <Widget>[
		Home(),
		Consumo(),
		Market(),
	];

	void _onItemTapped(int index) {
		setState(() {
			_selectedIndex = index;
		});
	}

	@override
	Widget build(BuildContext context) {
		return DefaultTabController(
			length: 3,
			child: Scaffold(
				appBar: AppBar(
					title: Row(
						children: <Widget>[
							GestureDetector(
								onTap: () {
									Navigator.of(context).pushNamed("/main/perfil");
								},
								child: Provider.of<UsuarioModel>(context).usuario.photoUrl != null ?
								new ClipRRect(
									borderRadius: new BorderRadius.circular(180.0),
									child: CachedNetworkImage(
										imageUrl: Provider.of<UsuarioModel>(context, listen: true).usuario.photoUrl,
										placeholder: (context, url) => CircularProgressIndicator(),
										width: 40,
										height: 40,
										fit: BoxFit.fitWidth,
									),
								) :
								Icon(
									Icons.account_circle,
									size: 40,
								)
							),
							Padding(
								padding: EdgeInsets.only(left: 18),
								child: _widgetsTitles[_selectedIndex],
							),
						],
					),
					actions: <Widget>[
						IconButton(
							padding: EdgeInsets.all(18),
							icon: Badge(
								child: Icon(
									Icons.notifications
								),
								showBadge: true,
								badgeContent: Text(
									"1",
									style: Theme.of(context).accentTextTheme.caption,
								),
							),
							onPressed: () {
								Navigator.of(context).pushNamed("/main/notificacao");
							}
						),
						SizedBox(
							width: 14,
						)
					],
				),
				body: _widgetsOptions.elementAt(_selectedIndex),
				bottomNavigationBar: BottomNavigationBar(
					items: const <BottomNavigationBarItem> [
						BottomNavigationBarItem(
							title: Text(""),
							icon: Icon(Icons.home),
						),
						BottomNavigationBarItem(
							title: Text(""),
							icon: Icon(Icons.timeline),
						),
						BottomNavigationBarItem(
							title: Text(""),
							icon: Icon(Icons.store),
						)
					],
					currentIndex: _selectedIndex,
					onTap: _onItemTapped,
					showSelectedLabels: false,
					showUnselectedLabels: false,
				),
			)
		);
	}
}