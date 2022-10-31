import 'package:equatable/equatable.dart';

class Params extends Equatable {
  final double lon;
  final double lat;
  final String appid;
  final String? units;

  const Params(
      {required this.lon, required this.lat, required this.appid, this.units});
  @override
  List<Object?> get props => [
        lon,
        lat,
        appid,
        units,
      ];
}
