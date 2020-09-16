import 'package:flutter/material.dart';
import 'file:///C:/All/Work/SelfLearning/flutter_app/lib/pages/home_page/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}