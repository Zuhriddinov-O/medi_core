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

  Future<List<Hospitals>?> _fetchHospitals() async {
    return await _repo.getHospitals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey,
      body: FutureBuilder<List<Hospitals>?>(
        future: _fetchHospitals(),
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.data?.isNotEmpty == true) {
            return _successField(snapshot.data ?? []);
          } else if (snapshot.data?.isEmpty == true) {
            return Center(child: Text("Empty", style: TextStyle(color: Colors.red)));
          } else if (snapshot.data == null) {
            return Center(child: Text("Null"));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: SpinKitDualRing(
                color: Colors.red,
              ),
            );
          }
          return Center(child: Text("Profile Page"));
        },
      ),
    );
  }

  _successField(List<Hospitals>? hospitals) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        mainAxisExtent: 100,
      ),
      itemCount: hospitals?.length,
      itemBuilder: (context, index) {
        final hospital = hospitals?[index];
        return Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: Text(
            hospital?.name ?? "",
            style: TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }
}
