import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MainScreenCard_NoButton extends StatelessWidget {
  const MainScreenCard_NoButton({
    Key key,
    @required this.data1,
    this.data1_pic,
  }) : super(key: key);

  final List data1;
  final String data1_pic;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image(image: AssetImage(data1_pic)),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        data1[0],
                        style: TextStyle(fontSize: 40),
                        minFontSize: 5,
                        stepGranularity: 1,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        data1[1],
                        style: TextStyle(fontSize: 20),
                        minFontSize: 6,
                        stepGranularity: 0.1,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        data1[2],
                        style: TextStyle(
                            color: Colors.green, fontSize: 30.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
