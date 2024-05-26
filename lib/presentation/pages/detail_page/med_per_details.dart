import 'package:flutter/material.dart';

class MedPerDetails extends StatefulWidget {
  const MedPerDetails({super.key});

  @override
  State<MedPerDetails> createState() => _LocationManualState();
}

class _LocationManualState extends State<MedPerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("MedPerDetails"),
      ),
    );
  }
}
