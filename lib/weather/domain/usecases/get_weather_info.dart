import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/weather_info.dart';
import '../repos/weather_info_repo.dart';

class GetWeatherInfo {
  final WeatherInfoRepo repo;
  GetWeatherInfo(this.repo);

  Future<Either<Failure, WeatherInfo?>> call(
    Params params,
  ) async {
    return await repo.getWeatherInfo();
  }
}
