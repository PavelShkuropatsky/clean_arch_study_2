import 'package:clean_arch_study_2/core/interfaces/usecase.dart';
import 'package:clean_arch_study_2/features/domain/entities/day_entity.dart';
import 'package:clean_arch_study_2/features/domain/params/get_day_info_params.dart';
import 'package:clean_arch_study_2/features/domain/repositories/day_repository.dart';

class GetDayInfo implements UseCase<DayEntity, GetDayInfoParams> {
  final DayRepository _dayRepository;

  GetDayInfo({required DayRepository dayRepository}) : _dayRepository = dayRepository;

  @override
  Future<DayEntity> call(GetDayInfoParams params) async => await _dayRepository.getDayInfo(params: params);
}
