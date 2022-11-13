import 'package:clean_arch_study_2/features/domain/params/get_day_info_params.dart';

extension GetDayInfoParamsDio on GetDayInfoParams {
  Map<String, dynamic> get toJson => {
    'lat': latitude,
    'lon': longitude,
    'formatted': 0,
  };
}
