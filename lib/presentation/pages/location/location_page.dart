import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:med_city/presentation/pages/location/location_manual.dart';
import 'package:med_city/presentation/widgets/default_button.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset("assets/images/location.png", fit: BoxFit.fill, filterQuality: FilterQuality.high),
              radius: MediaQuery.of(context).size.width / 8,
            ),
            Gap(20),
            Text("What is your location?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            Gap(10),
            Container(
                width: 350,
                child: Text(
                  "We need to know your location to offer nearby services",
                  textAlign: TextAlign.center,
                )),
            Gap(30),
            elevatedButton(context, LocationManual(), "Allow access location", true),
            Gap(15),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => LocationManual()));
                },
                child: Text("Enter location manually", style: TextStyle(color: Color(0xff074CFD))))
          ],
        ),
      ),
    );
  }
}
