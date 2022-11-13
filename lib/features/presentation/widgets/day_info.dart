import 'package:clean_arch_study_2/features/domain/entities/day_entity.dart';
import 'package:flutter/material.dart';

class DayInfo extends StatelessWidget {
  const DayInfo({
    super.key,
    required this.day,
  });

  final DayEntity day;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Sunrise: ${day.sunrise.toLocal()}'),
        Text('Sunset: ${day.sunset.toLocal()}'),
        Text('Solar noon: ${day.solarNoon.toLocal()}'),
        Text('Day length: ${Duration(seconds: day.dayLength)}'),
      ],
    );
  }
}
