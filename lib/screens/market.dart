import 'package:flutter/cupertino.dart';
import 'package:webgaz_app/widgets/anuncio.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Anuncio(),
          Anuncio(),
          Anuncio(),
          Anuncio(),
          Anuncio(),
          Anuncio(),
        ],
      ),
    );
  }
}
