import 'package:clean_arch_study_2/features/data/models/day_model.dart';
import 'package:clean_arch_study_2/features/data/params/get_day_info_params_dio.dart';
import 'package:clean_arch_study_2/features/domain/params/get_day_info_params.dart';
import 'package:clean_arch_study_2/features/domain/repositories/day_repository.dart';
import 'package:dio/dio.dart';

class DayRepositoryByDio implements DayRepository {
  final Dio _dio;

  DayRepositoryByDio(this._dio);

  @override
  Future<DayModel> getDayInfo({required GetDayInfoParams params}) async {
    final response = await _dio.get('/json', queryParameters: params.toJson);

    return DayModel.fromJson(response.data);
  }
}
