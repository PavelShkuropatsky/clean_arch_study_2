import 'package:clean_arch_study_2/features/data/repositories/day_repository_by_dio.dart';
import 'package:clean_arch_study_2/features/data/repositories/day_repository_mock.dart';
import 'package:clean_arch_study_2/features/domain/repositories/day_repository.dart';
import 'package:clean_arch_study_2/features/domain/usecases/get_day_info.dart';
import 'package:clean_arch_study_2/features/presentation/states/home_state.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'constants.dart' as constants;

final sl = GetIt.instance;

init() async {
  // State management
  sl.registerLazySingleton<HomeState>(() => HomeState(sl()));

  // UseCases
  sl.registerLazySingleton(() => GetDayInfo(dayRepository: sl()));

  // Repository
  sl.registerLazySingleton<DayRepository>(() => DayRepositoryByDio(sl()));

  // External
  sl.registerLazySingleton<Dio>(() => Dio(BaseOptions(baseUrl: constants.baseUrl)));
}