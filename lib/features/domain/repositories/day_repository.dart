import 'package:clean_arch_study_2/features/domain/entities/day_entity.dart';
import 'package:clean_arch_study_2/features/domain/params/get_day_info_params.dart';

abstract class DayRepository {
  Future<DayEntity> getDayInfo({required GetDayInfoParams params});
}