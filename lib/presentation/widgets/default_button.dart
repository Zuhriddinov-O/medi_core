import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

elevatedButton(BuildContext context, pageName, String textInButton,bool backBool) {
  return ElevatedButton(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      minimumSize: MaterialStatePropertyAll(Size(361, 50)),
      backgroundColor: MaterialStatePropertyAll(Color(0xff074CFD)),
    ),
    onPressed: () {
      Navigator.of(context).pushAndRemoveUntil(
          CupertinoPageRoute(
            builder: (context) => pageName,
          ),
          (route) => backBool);
    },
    child: Text(textInButton, style: TextStyle(color: Colors.white)),
  );
}
