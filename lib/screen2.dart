import 'package:flutter/material.dart';
import 'package:navigation_app/main.dart';

class MyWidget2 extends StatefulWidget {
  const MyWidget2({super.key});
  static String myWidget2Route='/Screen2';
  @override
  State<MyWidget2> createState() => _MyWidget2State();
}

class _MyWidget2State extends State<MyWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar2'),
      ),
      body: ElevatedButton(
        child: Text('Click Me'),
        onPressed: () {
          print('Dont Click me');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Dont Click me')));
          Navigator.pushNamed(context,  MyHomePage.routeVar);
        },
      ),
    );
  }
}
