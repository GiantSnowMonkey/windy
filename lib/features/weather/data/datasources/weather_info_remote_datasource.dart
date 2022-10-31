import 'package:dio/dio.dart';

import '../../../../../core/errors/exceptions.dart';
import '../../../../core/usecases/usecase.dart';
import '../models/weather_info_model.dart';

const String siteUrl = 'https://api.openweathermap.org/data/2.5/weather';

abstract class WeatherInfoRemoteDataSource {
  Future<WeatherInfoModel>? getWeatherInfo(Params params);
}

class WeatherInfoRemoteDataSourceImpl implements WeatherInfoRemoteDataSource {
  final Dio dio;

  WeatherInfoRemoteDataSourceImpl({required this.dio});

  @override
  Future<WeatherInfoModel>? getWeatherInfo(params) async {
    final response = await dio.get(
      siteUrl,
      queryParameters: {
        'lat': params.lat,
        'lon': params.lon,
        'appid': Params.appid,
        'units': params.units
      },
    );
    if (response.statusCode == 200) {
      return WeatherInfoModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
