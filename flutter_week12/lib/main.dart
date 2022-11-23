import 'package:flutter/material.dart';
import 'package:flutter_week12/scorepage.dart';
import 'editpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: EditPage(),
    );
  }
}
