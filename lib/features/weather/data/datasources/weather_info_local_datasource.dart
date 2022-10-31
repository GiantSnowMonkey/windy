import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/errors/exceptions.dart';
import '../models/weather_info_model.dart';

abstract class WeatherInfoLocalDataSource {
  Future<void>? cacheWeatherInfo(WeatherInfoModel? weatherToCache);
  Future<WeatherInfoModel>? getLastWeatherInfo();
}

const _cachedWeatherInfoKey = 'CACHED_WEATHER_INFO';

class WeatherInfoLocalDataSourceImpl implements WeatherInfoLocalDataSource {
  final SharedPreferences _sharedPreferences;

  WeatherInfoLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<void>? cacheWeatherInfo(WeatherInfoModel? weatherToCache) async {
    if (weatherToCache != null) {
      await _sharedPreferences.setString(
        _cachedWeatherInfoKey,
        json.encode(
          weatherToCache.toJson(),
        ),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<WeatherInfoModel>? getLastWeatherInfo() {
    final jsonString = _sharedPreferences.getString(_cachedWeatherInfoKey);
    if (jsonString != null) {
      return Future.value(
        WeatherInfoModel.fromJson(
          json.decode(jsonString),
        ),
      );
    } else {
      throw CacheException();
    }
  }
}
