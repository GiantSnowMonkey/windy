import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/weather_info.dart';

abstract class WeatherInfoRepo {
  Future<Either<Failure, WeatherInfo?>> getWeatherInfo();
}
