import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:med_city/domain/data/repository/data_repository.dart';
import 'package:med_city/presentation/widgets/success_field.dart';

class FBuilder extends StatelessWidget {
  const FBuilder({super.key, required this.repo});

  final ApiRepositoryImpl repo;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repo.getDoctors(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          return SuccessField(snapshot.data);
        } else if (snapshot.data == null) {
          return SpinKitDancingSquare(
            color: Colors.black,
            size: 30,
          );
        } else {
          return Container(
            child: Center(child: Text("404 Not Found", style: TextStyle(color: Colors.red))),
          );
        }
      },
    );
  }
}
