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
      this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod);

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
