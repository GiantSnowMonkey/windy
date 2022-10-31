import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/connection/network_info.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/datasources/weather_info_local_datasource.dart';
import '../../data/datasources/weather_info_remote_datasource.dart';
import '../../data/repo/weather_info_repo_impl.dart';
import '../../domain/entities/weather_info.dart';
import 'is_loading_provider.dart';

class WeatherInfoProvider extends ChangeNotifier {
  WeatherInfo? weatherInfo;
  Failure? failure;
  WeatherInfoProvider();
  failureOrInfo(BuildContext context) async {
    Provider.of<IsLoadingProvider>(context, listen: false).changeState(true);
    WeatherInfoRepoImpl repoImpl = WeatherInfoRepoImpl(
      remoteDataSource: WeatherInfoRemoteDataSourceImpl(dio: Dio()),
      localDataSource: WeatherInfoLocalDataSourceImpl(
        await SharedPreferences.getInstance(),
      ),
      networkInfoImpl: NetworkInfoImpl(
        InternetConnectionChecker(),
      ),
    );
    final failureOrWeather =
        await repoImpl.getWeatherInfo(const Params(lon: 0, lat: 0));
    failureOrWeather.fold(
      (newFailure) {
        weatherInfo = null;
        failure = newFailure;
        notifyListeners();
      },
      (info) {
        weatherInfo = info;
        failure = null;
        notifyListeners();
      },
    );
    // ignore: use_build_context_synchronously
    Provider.of<IsLoadingProvider>(context, listen: false).changeState(false);
  }
}
