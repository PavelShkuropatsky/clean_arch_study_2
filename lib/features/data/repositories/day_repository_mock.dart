import 'package:clean_arch_study_2/features/domain/entities/day_entity.dart';
import 'package:clean_arch_study_2/features/domain/params/get_day_info_params.dart';
import 'package:clean_arch_study_2/features/domain/repositories/day_repository.dart';

class DayRepositoryMock implements DayRepository {
  @override
  Future<DayEntity> getDayInfo({required GetDayInfoParams params}) {
    final today = DateTime.now();
    const sunriseHour = 7;
    const sunsetHour = 21;
    const dayLength = (sunsetHour - sunriseHour) * 60 * 60;
    final sunrise = DateTime(today.year, today.month, today.day, sunriseHour);
    final sunset = sunrise.add(const Duration(seconds: dayLength));
    final solarNoon = sunrise.add(const Duration(seconds: dayLength ~/ 2));

    return Future.value(DayEntity(sunrise: sunrise, sunset: sunset, solarNoon: solarNoon, dayLength: dayLength));
  }
}
