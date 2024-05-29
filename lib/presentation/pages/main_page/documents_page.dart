import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocumentsPage extends StatefulWidget {
  DocumentsPage({super.key, required this.text});

  String text;

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

bool dataIsHave = true;

class _DocumentsPageState extends State<DocumentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.systemGrey6,
        foregroundColor: Colors.white,
        title: Text(
          widget.text,
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
                  Image.asset("assets/logos/documents_background.png"),
                  Text(
                    "You don't have any documents",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: CupertinoColors.systemGrey),
                  ),
                ],
              ),
            )
          : Center(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) => _successField(),
              ),
            ),
    );
  }

  _successField() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Disease Name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          Text("Hospital Name", style: TextStyle(fontSize: 16, color: CupertinoColors.systemGrey)),
                          Text("Date Time", style: TextStyle(fontSize: 15, color: CupertinoColors.systemGrey)),
                        ],
                      )),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_rounded))
                ],
              ),
              Divider(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/logos/documents_background.png", scale: 2.5),
                  Image.asset("assets/logos/documents_background.png", scale: 2.5),
                  Image.asset("assets/logos/documents_background.png", scale: 2.5),
                  Image.asset("assets/logos/documents_background.png", scale: 2.5),
                  Image.asset("assets/logos/documents_background.png", scale: 2.5),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
