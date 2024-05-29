import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:med_city/presentation/pages/main_page/appointment_page.dart';
import 'package:med_city/presentation/pages/main_page/home_page.dart';
import 'package:med_city/presentation/pages/main_page/profile_page.dart';

import '../location/location_manual.dart';
import 'documents_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key, required this.text});
  final String text;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectIndex = 0;
  List pages = [
    HomePage(),
    AppointmentPage(),
    DocumentsPage(text: text),
    ProfilePage(),
  ];
  List<Icon> icons = [
    Icon(Icons.home_outlined),
    Icon(CupertinoIcons.calendar),
    Icon(CupertinoIcons.doc_text),
    Icon(CupertinoIcons.person_crop_circle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectIndex = value;
          setState(() {});
        },
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff074CFD),
        unselectedItemColor: Colors.grey,
        currentIndex: selectIndex,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: icons[0], label: "Home"),
          BottomNavigationBarItem(icon: icons[1], label: "Appointments"),
          BottomNavigationBarItem(icon: icons[2], label: "Home"),
          BottomNavigationBarItem(icon: icons[3], label: "Profile"),
        ],
      ),
    );
  }
}
