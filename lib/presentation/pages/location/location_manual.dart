import 'package:flutter/material.dart';

class LocationManual extends StatefulWidget {
  const LocationManual({super.key});

  @override
  State<LocationManual> createState() => _LocationManualState();
}

class _LocationManualState extends State<LocationManual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("LocationManual"),
      ),
    );
  }
}
