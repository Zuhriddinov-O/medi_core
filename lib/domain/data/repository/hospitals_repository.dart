import 'package:med_city/core/constants/constants.dart';
import 'package:med_city/domain/data/hospitals_network/hospitals_api_service.dart';

import '../model/hospitals_model.dart';

abstract class HospitalsRepository {
  Future<List<Hospitals>?> getHospitals();
}

class HospitalsRepositoryImpl extends HospitalsRepository {
  final _api = HospitalsApiService(buildDioClient(Constants.baseUrl2));

  @override
  Future<List<Hospitals>?> getHospitals() async {
    try {
      return _api.getHospitals();
    } catch (e) {
      print(e);
      return [];
    }
  }
}
