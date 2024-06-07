import 'package:med_city/core/constants/constants.dart';
import 'package:med_city/domain/data/hospitals_network/hospitals_api_service.dart';
import '../model/hospitals_model.dart';

abstract class HospitalsRepository {
  Future<Hospitals> getHospitals();
}

class HospitalsRepositoryImpl extends HospitalsRepository {
  final _api = HospitalsApiService(buildDioClient(Constants.baseUrl2));

  @override
  Future<Hospitals> getHospitals() async {
    try {
      final apiResponse = await _api.getHospitals();
      return Hospitals.fromJson(apiResponse.toJson());
    } catch (e) {
      print(e);
      throw Exception("Hospitals");
    }
  }
}
