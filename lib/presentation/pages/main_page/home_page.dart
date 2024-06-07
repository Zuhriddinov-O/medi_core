import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:med_city/domain/data/repository/doctors_repository.dart';
import 'package:med_city/presentation/pages/detail_page/med_per_details.dart';
import 'package:med_city/presentation/pages/location/location_manual.dart';
import 'package:med_city/presentation/widgets/future_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final repo = ApiRepositoryImpl();
  TextEditingController _textEditingController = TextEditingController();
  bool _searchIsActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ListTile(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/location.png",
                fit: BoxFit.fill,
                width: 20,
                height: 20,
              ),
              Text("text"),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          onTap: () => Navigator.of(context).pushAndRemoveUntil(
              CupertinoPageRoute(
                builder: (context) => LocationManual(),
              ),
              (route) => true),
        ),
        bottom: PreferredSize(preferredSize: Size.fromHeight(10), child: Divider()),
      ),
      backgroundColor: Color(0xffF1F1F1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          Column(
            children: [
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
            color: Colors.blueAccent,
            child: FBuilder(repo: repo),
          );
        },
        openBuilder: (context, action) => MedPerDetails(),
      ),
    );
  }
}
