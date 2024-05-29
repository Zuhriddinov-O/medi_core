import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppointmentPage extends StatefulWidget {
  AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}


bool dataIsHave = true;

class _AppointmentPageState extends State<AppointmentPage> {

  late var page = PageController();

  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            height: 60,
            child: CupertinoSlidingSegmentedControl(
              children: const {
                0: Text("Upcoming"),
                1: Text("Past"),
              },
              groupValue: _sliding,
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue;
                });
              },
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: CupertinoColors.systemGrey6,
        foregroundColor: Colors.white,
        title: Text(
          "Appointments",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey6,
      body: dataIsHave == false
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/logos/appointments_background.png"),
                  Text(
                    "You don't have any appointments",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: CupertinoColors.systemGrey),
                  ),
                ],
              ),
            )
          : Center(
              child: Container(
                height: 700,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: page,
                  onPageChanged: (value) {

                  },
                  scrollBehavior: CupertinoScrollBehavior(),
                  children: [
                    ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return _successUpcoming();
                      },
                    ),
                    ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return _successPast();
                      },
                    ),
                  ],
                ),
              )
            ),
    );
  }

_successUpcoming(){
    return   Padding(
      padding: const EdgeInsets.all(14),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 64,
                          height: 64,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: FlutterLogo(
                              size: 64,
                            ),
                          ),
                        ),
                        Gap(20),
                        Column(
                          children: [
                            Text("Nurse Name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                            Text("DateTime", style: TextStyle(fontSize: 16, color: CupertinoColors.systemGrey))
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios, color: CupertinoColors.systemGrey))
                ],
              ),
              Gap(20),
              Container(
                width: MediaQuery.of(context).size.width - 62,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFDBEAFE),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.calendar, color: Color(0xFF074CFF)),
                    Gap(12),
                    Text(
                      "Monday, 26th september, 9:00 - 10:00",
                      style: TextStyle(fontSize: 20, color: Color(0xFF074CFF)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
}


_successPast(){
    return   Padding(
      padding: const EdgeInsets.all(14),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 64,
                          height: 64,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: FlutterLogo(
                              size: 64,
                            ),
                          ),
                        ),
                        Gap(20),
                        Column(
                          children: [
                            Text("Nurse Name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                            Text("DateTime", style: TextStyle(fontSize: 16, color: CupertinoColors.systemGrey))
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios, color: CupertinoColors.systemGrey))
                ],
              ),
              Gap(20),
              Container(
                width: MediaQuery.of(context).size.width - 62,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFFE1E0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.calendar, color: Color(0xFFFD7062)),
                    Gap(12),
                    Text(
                      "Monday, 26th september, 9:00 - 10:00",
                      style: TextStyle(fontSize: 20, color: Color(0xFFFD7062)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
