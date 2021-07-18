import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_viet/pages/help.dart';
import 'package:flutter_viet/pages/mangosteen.dart';
import 'package:flutter_viet/pages/passion.dart';
import 'package:flutter_viet/pages/rambutan.dart';
import 'package:flutter_viet/widgets/mainscreencard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class mainStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _mainState();
  }
}

class _mainState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VietNam Fruit ✨"),
        actions: <Widget>[
          HelpIcon(),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 10,
            ), // Spacer
            MainScreenCard(
                data1_pic: 'assets/all/passion.png',
                data1: ['Passion Fruit', 'hello hi, alo ha', 'All Year'],
                data1_destination: Passion()),
            MainScreenCard(
                data1_pic: 'assets/all/mangosteen.png',
                data1: ['Mangosteen', 'hello hi, alo ha', 'May - August'],
                data1_destination: Mangosteen()),
            MainScreenCard(
                data1_pic: 'assets/all/rambutan.png',
                data1: ['Rambutan', 'hello hi, alo ha', 'Summer / Winter'],
                data1_destination: Rambutan()),
            MainScreenCard(
                data1_pic: 'assets/all/passion.png',
                data1: [
                  'Passion Fruit',
                  'hello hi, alo ha, heywhatsup',
                  'All Year'
                ],
                data1_destination: Passion()),
            MainScreenCard(
                data1_pic: 'assets/all/passion.png',
                data1: [
                  'Passion Fruit',
                  'hello hi, alo ha, heywhatsup',
                  'All Year'
                ],
                data1_destination: Passion()),
          ],
        ),
      ),
    );
  }
}
