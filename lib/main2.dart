import 'package:flutter/material.dart';
import 'foodmenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodMenu(), // เรียกใช้ FoodMenu ที่สร้างขึ้น
    );
  }
}
