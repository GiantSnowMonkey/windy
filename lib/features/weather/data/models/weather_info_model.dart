import '../../domain/entities/weather_info.dart';

class WeatherInfoModel extends WeatherInfo {
  const WeatherInfoModel({
    required Map<String, dynamic> coord,
    required List<dynamic> weather,
    required String base,
    required Map<String, dynamic> main,
    required int visibility,
    required Map<String, dynamic> wind,
    required Map<String, dynamic> clouds,
    required int dt,
    required Map<String, dynamic> sys,
    required int timezone,
    required int id,
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
