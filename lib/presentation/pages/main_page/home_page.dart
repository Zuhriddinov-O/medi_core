import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:med_city/presentation/pages/detail_page/med_per_details.dart';

import '../location/location_manual.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  bool _searchIsActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "location",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(3),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        CupertinoPageRoute(builder: (context) => LocationManual()), (route) => true);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff074CFD),
                        size: 20,
                      ),
                      Text(
                        text,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Icon(
                        CupertinoIcons.arrow_down,
                        color: Colors.grey,
                        size: 20,
                      )
                    ],
                  )))),
      backgroundColor: Color(0xffF1F1F1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          Column(
            children: [
              CupertinoTextField(
                onTap: () {
                  _searchIsActive = !_searchIsActive;
                  controller.clear();
                  setState(() {});
                },
                controller: controller,
                padding: EdgeInsets.all(15),
                style: TextStyle(color: Colors.black),
                cursorColor: Color(0xff074CFD),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white),
                placeholder: "Look for doctors or hospitals...",
                suffix: Icon(
                  _searchIsActive == true ? Icons.clear : Icons.search,
                  color: Color(0xff074CFD),
                  size: 30,
                ),
              ),
              Gap(30),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Doctors nearby",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      )
                    ],
                  )),
              _openContainer(),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Doctors nearby",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      )
                    ],
                  )),
              _openContainer(),
            ],
          ),
        ]),
      ),
    );
  }

  _openContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: OpenContainer(
        closedBuilder: (context, action) {
          return Container(
            width: 150,
            height: 150,
            color: Colors.yellowAccent,
          );
        },
        openBuilder: (context, action) => MedPerDetails(),
      ),
    );
  }
}
