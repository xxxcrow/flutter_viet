import 'package:flutter/material.dart';
import 'package:flutter_viet/widgets/fruitinfocard.dart';
import 'package:flutter_viet/widgets/mainscreencard_nobutton.dart';

class Mangosteen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MangosteenState();
  }
}

class _MangosteenState extends State<Mangosteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mangosteen'),
      ),
      body: Column(
        children: <Widget>[
          MainScreenCard_NoButton(
            data1: [
              'Mangosteen',
              'Chanh Leo - Xin Chao - Tes Ta',
              'May - August'
            ],
            data1_pic: 'assets/all/mangosteen.png',
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                InfoCardNew(data2: [
                  'Uses',
                  'The easiest way to eat a mangosteen is by peeling the skin; sometimes a knife might be required because the rind can be quite thick. Once you have opened the fruit you can eat the flesh straight away.',
                  'Easy'
                ]),
                InfoCardNew(data2: [
                  'Buying',
                  'It is easy to find passion fruit everywhere and all-year-round in Vietnam. You can find unique drinks and dishes featuring this fruit.',
                  '60,000 VND'
                ]),
                InfoCardNew(data2: [
                  'Nutrition',
                  'Passion fruit is rich with health benefits and nutrients. The fruit is wealthy in vitamins like Vitamin A, C, B3, B6, and iron. It is also known to have anti-inflammatory products and antioxidants.',
                  'Very Good'
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
