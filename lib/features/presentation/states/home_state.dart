import 'package:clean_arch_study_2/features/domain/entities/day_entity.dart';
import 'package:clean_arch_study_2/features/domain/params/get_day_info_params.dart';
import 'package:clean_arch_study_2/features/domain/repositories/day_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  HomeStateBase(this._dayRepository);

  final DayRepository _dayRepository;

  @observable
  DayEntity? day;

  @observable
  bool isLoading = false;

  @action
  Future<void> getDay({
    required double latitude,
    required double longitude,
  }) async {
    isLoading = true;
    day = await _dayRepository.getDayInfo(params: GetDayInfoParams(latitude: latitude, longitude: longitude));
    isLoading = false;
  }
}
