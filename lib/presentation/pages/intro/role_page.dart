import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:med_city/presentation/pages/intro/togo_registration.dart';
import 'package:med_city/presentation/widgets/default_button.dart';

class RolePage extends StatefulWidget {
  const RolePage({super.key});

  @override
  State<RolePage> createState() => _RolePageState();
}

bool _checkBoxState1 = false;
bool _checkBoxState2 = false;
bool _checkBoxState3 = false;
bool backBool = false;

class _RolePageState extends State<RolePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(0, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Choose your role",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Gap(20),
          Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.grey[200],
                leading: Image.asset("assets/images/patient.png"),
                title: Text("Patient"),
                trailing: Checkbox(
                  shape: StadiumBorder(),
                  value: _checkBoxState1,
                  onChanged: (value) {
                    _checkBoxState1 = !_checkBoxState1;
                    _checkBoxState2 = false;
                    _checkBoxState3 = false;
                    _checkBoxState1 = value!;
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
          Gap(20),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[200],
              leading: Image.asset("assets/images/nurse.png"),
              title: Text("Medical staff"),
              trailing: Checkbox(
                shape: StadiumBorder(),
                value: _checkBoxState2,
                onChanged: (value) {
                  _checkBoxState2 = !_checkBoxState2;
                  _checkBoxState1 = false;
                  _checkBoxState3 = false;
                  _checkBoxState2 = value!;
                  setState(() {});
                },
              ),
            ),
          ),
          Gap(20),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[200],
              leading: Image.asset("assets/images/shield.png"),
              title: Text("Healthcare facility operator"),
              trailing: Checkbox(
                shape: StadiumBorder(),
                value: _checkBoxState3,
                onChanged: (value) {
                  _checkBoxState3 = !_checkBoxState3;
                  _checkBoxState1 = false;
                  _checkBoxState2 = false;
                  _checkBoxState3 = value!;
                  setState(() {});
                },
              ),
            ),
          ),
          Expanded(child: Container()),
          elevatedButton(
              context,
              _checkBoxState1 || _checkBoxState2 || _checkBoxState3 == true ? ToGoRegistration() : alertContainer(),
              "Next",
              backBool = true),
          Gap(30)
        ],
      ),
    );
  }

  alertContainer() {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/file.gif",
              width: 200,
              height: 200,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
            ),
            SizedBox(
                width: 350,
                child: Text(
                  "Choose one of your role from the top,otherwise you can not pass to the next page",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                )),
            Gap(50),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  minimumSize: MaterialStatePropertyAll(Size(361, 50)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xff074CFD)),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Go Back", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
