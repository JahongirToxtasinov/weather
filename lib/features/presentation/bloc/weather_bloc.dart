import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/repository/weather.dart';
import '../../domain/entities/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;

  WeatherBloc({required this.repository}) : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is GetWeatherData) {
      yield WeatherLoading();
      try {
        final data = await repository.fetchWeatherData(event.cityName);
        final location = repository.parseLocation(data['location']);
        final current = repository.parseCurrent(data['current']);
        yield WeatherLoaded(location: location, current: current);
      } catch (e) {
        yield WeatherError();
      }
    }
  }
}


