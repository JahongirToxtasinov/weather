part of 'weather_bloc.dart';

abstract class WeatherEvent {}

class GetWeatherData extends WeatherEvent {
  final String cityName;

  GetWeatherData({required this.cityName});
}
