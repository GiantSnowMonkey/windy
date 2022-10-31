import 'dart:core';
import 'package:equatable/equatable.dart';

class WeatherInfo extends Equatable {
  final Map<String, dynamic> coord;
  final List<dynamic> weather;
  final String base;
  final Map<String, dynamic> main;
  final int visibility;
  final Map<String, dynamic> wind;
  final Map<String, dynamic> clouds;
  final int dt;
  final Map<String, dynamic> sys;
  final int timezone;
  final int id;
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
