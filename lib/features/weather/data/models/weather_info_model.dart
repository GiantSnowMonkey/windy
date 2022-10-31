import '../../domain/entities/weather_info.dart';

class WeatherInfoModel extends WeatherInfo {
  const WeatherInfoModel({
    required Map<String, double> coord,
    required Map<int, Map<String, dynamic>> weather,
    required String base,
    required Map<String, double> main,
    required double visibility,
    required Map<String, double> wind,
    required Map<String, double> clouds,
    required double dt,
    required Map<String, dynamic> sys,
    required double timezone,
    required double id,
    required String name,
    required int cod,
  }) : super(
          coord: coord,
          weather: weather,
          base: base,
          main: main,
          visibility: visibility,
          wind: wind,
          clouds: clouds,
          dt: dt,
          sys: sys,
          timezone: timezone,
          id: id,
          name: name,
          cod: cod,
        );
  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) {
    return WeatherInfoModel(
      //TODO: Fix numbers and convert to int or double
      coord: json['coord'],
      weather: json['weather'],
      base: json['base'],
      main: json['main'],
      visibility: json['visibility'],
      wind: json['wind'],
      clouds: json['clouds'],
      dt: json['dt'],
      sys: json['sys'],
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'coord': coord,
      'weather': weather,
      'base': base,
      'main': main,
      'visibility': visibility,
      'wind': wind,
      'clouds': clouds,
      'dt': dt,
      'sys': sys,
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }
}
