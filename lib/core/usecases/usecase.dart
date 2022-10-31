import 'package:equatable/equatable.dart';

const String apiKey = '31746fb4b791cab85b915be7c308614f';

class Params extends Equatable {
  static const String appid = apiKey;
  final double lon;
  final double lat;
  final String units;

  const Params({required this.lon, required this.lat, this.units = 'metric'});
  @override
  List<Object?> get props => [
        lon,
        lat,
        appid,
        units,
      ];
}
