import 'package:exercice_part_1/second_page.dart';
import 'package:flutter/material.dart';

class ButtonToPageTwo extends StatelessWidget {
  const ButtonToPageTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('To page 2'),
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => SecondPage(),
              ));
        });
  }
}
