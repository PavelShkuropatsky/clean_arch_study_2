import 'package:clean_arch_study_2/features/domain/entities/day_entity.dart';

class DayModel extends DayEntity {
  static final _nullDate = DateTime(1970,1,1);

  DayModel({
    required super.sunrise,
    required super.sunset,
    required super.solarNoon,
    required super.dayLength,
  });

  DayModel.fromJson(Map<String, dynamic> json)
      : this(
          sunrise: DateTime.tryParse(json['results']['sunrise']) ?? _nullDate,
          sunset: DateTime.tryParse(json['results']['sunset']) ?? _nullDate,
          solarNoon: DateTime.tryParse(json['results']['solar_noon']) ?? _nullDate,
          dayLength: (json['results']['day_length'] ?? 0).toInt(),
        );
}
