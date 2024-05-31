import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:med_city/presentation/pages/intro/role_page.dart';
import 'package:med_city/presentation/pages/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Med City',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CupertinoColors.systemBlue),
        useMaterial3: true,
      ),
      home: MainPage(text: ''),
    );
  }
}
