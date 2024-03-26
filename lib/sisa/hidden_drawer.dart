import 'package:doctor_hunt/screen/17_login01.dart';
import 'package:doctor_hunt/sisa/22_mydoctor.dart';
import 'package:doctor_hunt/screen/23_medicalrecord.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 16, 
            color: Colors.white,
          );
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'My Doctor',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.white
         ), 
        MyDoctorsScreen()), 

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Medical Record',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        MedicalRecord()),

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Payments',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        MedicalRecord()),

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Medicine Orders',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        MedicalRecord()),

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Test Bookings',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        MedicalRecord()),

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Privacy & Policy',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        MedicalRecord()),

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Help Center',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        MedicalRecord()),

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        MedicalRecord()),

        ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'LogOut',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle, 
          colorLineSelected: Colors.white, 
         ), 
        LoginSatu()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorAppBar: Color(0xff0EBE7F),
      backgroundColorMenu: Color(0xff6F7FA1),
      screens: _pages, 
      initPositionSelected: 0,
      slidePercent: 80,
      contentCornerRadius: 30,
      isTitleCentered: true,
      leadingAppBar: Icon(Icons.arrow_back_ios),
    );
  }
}