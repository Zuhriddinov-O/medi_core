import 'package:flutter/material.dart';
import 'package:med_city/domain/data/model/data_model.dart';

SuccessField(Doctors? doctors) {
  return Container(
    width: 100,
    height: 100,
    child: Image.asset(doctors!.image!,fit: BoxFit.fill,filterQuality: FilterQuality.high),
  );
}
