import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MainScreenCard extends StatelessWidget {
  const MainScreenCard({
    Key key,
    @required this.data1_pic,
    @required this.data1,
    @required this.data1_destination,
  }) : super(key: key);

  final String data1_pic;
  final List data1;
  final Widget data1_destination;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
            child: Card(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                        image: AssetImage(data1_pic)),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AutoSizeText(
                              data1[0],
                              style: TextStyle(fontSize: 25),
                              minFontSize: 5,
                              stepGranularity: 1,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            AutoSizeText(
                              data1[1],
                              style: TextStyle(fontSize: 15),
                              minFontSize: 6,
                              stepGranularity: 0.1,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            AutoSizeText(
                              data1[2],
                              style: TextStyle(color: Colors.green, fontSize: 25),
                              minFontSize: 5,
                              stepGranularity: 1,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        data1_destination));
                              },
                              child: Text('Read more'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}