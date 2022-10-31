import 'dart:core';
import 'package:equatable/equatable.dart';

class WeatherInfo extends Equatable {
  final Map<String, double> coord;
  final Map<int, Map<String, dynamic>> weather;
  final String base;
  final Map<String, double> main;
  final double visibility;
  final Map<String, double> wind;
  final Map<String, double> clouds;
  final double dt;
  final Map<String, dynamic> sys;
  final double timezone;
  final double id;
  final String name;
  final int cod;

  const WeatherInfo(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod});

  @override
  List<Object?> get props => [
        coord,
        weather,
        base,
        main,
        visibility,
        wind,
        clouds,
        dt,
        sys,
        timezone,
        id,
        name,
        cod,
      ];
}
