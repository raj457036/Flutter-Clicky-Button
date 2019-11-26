import 'package:flutter/material.dart';
import './pages/clicky_button_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Overlay overlay = Overlay();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClickyButtonPage(),
    );
  }
}
