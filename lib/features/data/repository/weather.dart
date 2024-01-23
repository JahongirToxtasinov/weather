import '../../domain/entities/weather.dart';
import 'package:dio/dio.dart';

import '../models/weather_model.dart';
class WeatherRepository {
  final Dio dio;

  WeatherRepository({required this.dio});

  Future<Map<String, dynamic>> fetchWeatherData(String cityName) async {
    final response = await dio.get(
      'http://api.weatherapi.com/v1/current.json?key=e76d154ceb2a4e05a2c62513241901&q=$cityName&aqi=no',
    );
    return response.data;
  }

  Location parseLocation(Map<String, dynamic> data) {
    return Location.fromModel(LocationModel.fromJson(data));
  }

  Current parseCurrent(Map<String, dynamic> data) {
    return Current.fromModel(CurrentModel.fromJson(data));
  }
}
