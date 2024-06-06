import 'package:med_city/core/constants/constants.dart';
import 'package:med_city/domain/data/network/api_service.dart';
import '../model/data_model.dart';

abstract class ApiRepository {
  Future<Doctors> getDoctors();
}

class ApiRepositoryImpl extends ApiRepository {
  final _api = ApiService(buildDioClient(Constants.baseUrl));

  @override
  Future<Doctors> getDoctors() async {
    try {
      final apiResponse = await _api.getDoctors();
      return Doctors.fromJson(apiResponse.toJson());
    } catch (e) {
      print(e);
      throw Exception("Could not load doctors");
    }
  }
}
