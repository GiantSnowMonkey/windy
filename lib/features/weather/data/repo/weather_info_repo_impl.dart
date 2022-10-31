import 'package:dartz/dartz.dart';

import '../../../../../core/connection/network_info.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/errors/failures.dart';
import '../../domain/entities/weather_info.dart';
import '../../domain/repos/weather_info_repo.dart';
import '../datasources/weather_info_local_datasource.dart';
import '../datasources/weather_info_remote_datasource.dart';

class WeatherInfoRepoImpl implements WeatherInfoRepo {
  final WeatherInfoRemoteDataSource remoteDataSource;
  final WeatherInfoLocalDataSource localDataSource;
  final NetworkInfoImpl networkInfoImpl;

  WeatherInfoRepoImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfoImpl});

  @override
  Future<Either<Failure, WeatherInfo?>> getWeatherInfo(params) async {
    if (await networkInfoImpl.isConnected) {
      try {
        final remoteActivity = await remoteDataSource.getWeatherInfo(params);
        localDataSource.cacheWeatherInfo(remoteActivity);
        return Right(remoteActivity);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else {
      try {
        final localActivity = await localDataSource.getLastWeatherInfo();
        return Right(localActivity);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'This is a cache exception'));
      }
    }
  }
}
