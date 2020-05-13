import 'package:flutter/material.dart';
import 'package:my_smart_home/screens/home_page.dart';

void main() => runApp(MySmartHome());

class MySmartHome extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

