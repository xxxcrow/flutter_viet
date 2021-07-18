import 'package:flutter/material.dart';
import 'package:flutter_viet/widgets/fruitinfocard.dart';
import 'package:flutter_viet/widgets/mainscreencard_nobutton.dart';

class Rambutan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RambutanState();
  }
}

class _RambutanState extends State<Rambutan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rambutan'),
      ),
      body: Column(
        children: <Widget>[
          MainScreenCard_NoButton(
            data1: ['Rambutan', 'Chanh Leo - Xin Chao - Exa Mple', 'Summer and Winter'],
            data1_pic: 'assets/all/rambutan.png',
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                InfoCardNew(data2: [
                  'Uses',
                  'The part of the fruit that is used (eaten) is the pulpy juicy seeds. Passion fruits can also be squeezed to make juice.',
                  'Easy'
                ]),
                InfoCardNew(data2: [
                  'Buying',
                  'It is easy to find passion fruit everywhere and all-year-round in Vietnam. You can find unique drinks and dishes featuring this fruit.',
                  '20,000-30,000VND'
                ]),
                InfoCardNew(data2: [
                  'Nutrition',
                  'Passion fruit is rich with health benefits and nutrients. The fruit is wealthy in vitamins like Vitamin A, C, B3, B6, and iron. It is also known to have anti-inflammatory products and antioxidants.',
                  'Good'
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
