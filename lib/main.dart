import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/parang.png'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Pantai Parangtritis',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ); 

    SizedBox(height: 15, width: 15);

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(
          Icons.phone,
          "Call"
          ),
          _buildMenuSection(
          Icons.share_location_rounded,
          "Route"
          ),
          _buildMenuSection(
          Icons.share,
          "Share"
          ),
      ],
    ); 

    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Daerah Istimewa Yogyakarta tidaklah terlalu besar, namun ternyata Jogja mempunyai puluhan pantai yang sangat menarik untuk dikunjungi, salah satunya adalah Pantai Parangtritis.  Tempat wisata ini boleh terbilang adalah salah satu destinasi wisata paling favorit diantara para wisatawan sejak lama.'
        'Pantai Parangtritis terbilang sebagai pantai yang spesial di Indonesia, karena di pantai ini terdapat padang pasir yang lazimnya kita temui di belahan dunia arab. Namun di pantai ini anda akan bisa menemukan gundukan-gundukan pantai layaknya sedang di padang pasir arab. Padang pasir yang ada di kawasan Pantai Parangtritis ini dinamakan Gumuk Pasir. ',
          textAlign: TextAlign.justify,
        )
    );

    return MaterialApp(
      title: 'Material Apps',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          actions: <Widget>[
            Icon(Icons.search, color: Colors.black,)
          ],
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            menuSection,
            descriptionSection,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(
  String text, 
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
) {

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
    ],
  );
}