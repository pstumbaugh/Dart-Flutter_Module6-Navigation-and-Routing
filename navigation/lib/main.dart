import 'package:flutter/material.dart';
import 'screens/alpha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Journal', theme: ThemeData.dark(), home: Alpha());
  }
}
