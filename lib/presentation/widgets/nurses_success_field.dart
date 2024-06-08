import 'package:flutter/material.dart';
import 'package:med_city/domain/data/model/doctors_model.dart';

SuccessField(List<Doctors>? doctors) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: doctors!.length,
    itemBuilder: (context, index) {
      final doctor = doctors[index];
      return Container(
        height: 100,
        width: 100,
        child: Image.asset(
          doctor.image ?? "",
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
        ),
      );
    },
  );
}
