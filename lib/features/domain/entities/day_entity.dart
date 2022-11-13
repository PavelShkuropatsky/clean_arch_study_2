class DayEntity {
  final DateTime sunrise;
  final DateTime sunset;
  final DateTime solarNoon;
  final int dayLength;

  DayEntity({
    required this.sunrise,
    required this.sunset,
    required this.solarNoon,
    required this.dayLength,
  });
}
