import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:med_city/domain/data/model/hospitals_model.dart';
import 'package:med_city/domain/data/repository/hospitals_repository.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final HospitalsRepositoryImpl _repo;

  @override
  void initState() {
    super.initState();
    _repo = HospitalsRepositoryImpl();
  }

  Future<Hospitals> _fetchHospitals() async {
    return await _repo.getHospitals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey,
      body: FutureBuilder(
        future: _fetchHospitals(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return _successField(snapshot.data);
          } else if (snapshot.data == null) {
            return Center(
              child: SpinKitDualRing(
                color: Colors.red,
              ),
            );
          }
          return Text("Profile Page");
        },
      ),
    );
  }

  _successField(Hospitals? hospitals) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        mainAxisExtent: 100,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          child: Text(
            hospitals?.county ?? "",
            style: TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }
}
