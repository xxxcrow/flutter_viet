import 'package:flutter/material.dart';

class InfoCardNew extends StatelessWidget {
  const InfoCardNew({
    Key key,
    @required this.data2,
  }) : super(key: key);

  final List data2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    data2[0],
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Text(
                  data2[1],
                  maxLines: 10,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  data2[2],
                  style: TextStyle(
                      color: Colors.green, fontSize: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}