import 'package:med_city/core/constants/constants.dart';
import 'package:med_city/domain/data/network/api_service.dart';

import '../model/doctors_model.dart';

abstract class ApiRepository {
  Future<List<Doctors>> getDoctors();
}

class ApiRepositoryImpl extends ApiRepository {
  final _api = ApiService(buildDioClient(Constants.baseUrl));

  @override
  Future<List<Doctors>> getDoctors() async {
    try {
     return await _api.getDoctors();
    } catch (e) {
      print(e);
      return [];
    }
  }
}
