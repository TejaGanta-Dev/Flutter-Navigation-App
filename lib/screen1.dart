import 'package:flutter/material.dart';
import 'package:navigation_app/screen2.dart';

class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});
  static String myWidget1Route = '/Screen1';
  @override
  State<MyWidget1> createState() => _MyWidget1State();
}

class _MyWidget1State extends State<MyWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar1'),
      ),
      body: ElevatedButton(
        child: Text('Click Me'),
        onPressed: () {
          print('Dont Click me');
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Dont Click me')));
          Navigator.pushNamed(context, MyWidget2.myWidget2Route);
        },
      ),
    );
  }
}
