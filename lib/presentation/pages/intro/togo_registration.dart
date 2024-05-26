import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:med_city/presentation/pages/intro/registration_page.dart';
import 'package:med_city/presentation/widgets/default_button.dart';

class ToGoRegistration extends StatelessWidget {
  const ToGoRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child:
                Image.asset("assets/images/lock.png", scale: 1, fit: BoxFit.fill, filterQuality: FilterQuality.high),
            minRadius: 50,
          ),
          Gap(50),
          Text("Registration", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          Gap(10),
          Container(
              width: 250,
              child: Text("Please, register using your OneID to use the application.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                  softWrap: true)),
          Gap(40),
          elevatedButton(context, RegistrationPage(), "Registration via OneId")
        ],
      ),
    );
  }
}
