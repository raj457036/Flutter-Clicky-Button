import 'package:flutter/material.dart';
import '../clicky_button/clicky_button.dart';

class ClickyButtonPage extends StatefulWidget {
  final List<MaterialColor> colors = const [
    Colors.green,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.amber,
  ];

  @override
  _ClickyButtonPageState createState() => _ClickyButtonPageState();
}

class _ClickyButtonPageState extends State<ClickyButtonPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Clicky Button',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 40.0,
            ),
            ClickyButton(
              child: Text(
                'Click Me!',
                style: TextStyle(
                    color: _counter % widget.colors.length == 2
                        ? Colors.black
                        : Colors.white,
                    fontSize: 22),
              ),
              color: widget.colors[_counter % widget.colors.length],
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'You clicked me $_counter times',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
