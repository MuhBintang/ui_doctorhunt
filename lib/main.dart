import 'package:doctor_hunt/screen/15_thankyou.dart';
import 'package:doctor_hunt/screen/22_advance_drawer_menu.dart';
import 'package:doctor_hunt/sisa/hidden_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Hunt',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ThankYouScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
