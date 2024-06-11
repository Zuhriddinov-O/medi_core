import 'package:med_city/core/constants/constants.dart';
import 'package:med_city/domain/data/network/api_service.dart';

import '../model/doctors_model.dart';

abstract class ApiRepository {
  Future<List<Doctors>> getDoctors();
}

class ApiRepositoryImpl extends ApiRepository {
  final _api = ApiService(buildDioClient(Constants.baseUrl3));

  @override
  Future<List<Doctors>> getDoctors() async {
    try {
      print('ishladddiiiiiiiiii');
      await _api.getUsers();
     return [];
    } catch (e) {
      print(e);
      return [];
    }
  }
}
