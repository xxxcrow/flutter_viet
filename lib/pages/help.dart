import 'package:flutter/material.dart';

class HelpIcon extends StatelessWidget {
  const HelpIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.ac_unit,
        color: Colors.white,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
                child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                              child: Image(
                                  image: AssetImage('assets/all/passion.png'))),
                        ],
                      ),
                      Column(
                        children: [Text('123')],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [Text('123123')],
                    ),
                    Column(
                      children: [Text('123')],
                    )
                  ],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [Text('123123')],
                    ),
                    Column(
                      children: [Text('123')],
                    )
                  ],
                )),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [Text('123123')],
                    ),
                    Column(
                      children: [Text('123')],
                    )
                  ],
                )),
              ],
            ));
          },
        );
      },
    );
  }
}
