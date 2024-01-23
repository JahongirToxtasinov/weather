part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object?> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Location location;
  final Current current;

  WeatherLoaded({required this.location, required this.current});

  @override
  List<Object?> get props => [location, current];
}

class WeatherError extends WeatherState {}