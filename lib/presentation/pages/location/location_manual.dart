import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_page/main_page.dart';

class LocationManual extends StatefulWidget {
  const LocationManual({super.key});

  @override
  State<LocationManual> createState() => _LocationManualState();
}

TextEditingController _textEditingController = TextEditingController();
bool _searchIsActive = false;
String text = "";

class _LocationManualState extends State<LocationManual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        title: _searchIsActive
            ? TextField(
                controller: _textEditingController,
                onChanged: (value) {
                  text = value;
                  setState(() {});
                },
                textInputAction: TextInputAction.done,
                autocorrect: true,
                decoration:
                    InputDecoration(border: InputBorder.none, alignLabelWithHint: true, label: Text("Enter location")),
              )
            : Text("Enter Location"),
        actions: [
          IconButton(
              onPressed: () {
                _textEditingController.clear();
                _searchIsActive = !_searchIsActive;
                setState(() {});
              },
              icon: Icon(
                _searchIsActive ? Icons.clear : Icons.search,
                color: Color(0xff074CFD),
                size: 30,
              ))
        ],
        bottom: PreferredSize(preferredSize: Size.fromHeight(10), child: Divider()),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                onTap: () {
                  text.isNotEmpty == true
                      ? Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(
                            builder: (context) => MainPage(text: text),
                          ),
                          (route) => false)
                      : ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Enter your location"), backgroundColor: Colors.redAccent));
                },
                leading: Image.asset(
                  "assets/images/location_circle.png",
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  width: 29,
                  height: 29,
                ),
                title: Text("Use current location"),
                tileColor: Colors.transparent),
            Divider(),
            Text("SEARCH RESULT", style: TextStyle(color: Colors.grey)),
            Text(
              text,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
