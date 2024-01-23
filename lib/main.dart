import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/assets/theme.dart';

import 'features/data/repository/weather.dart';
import 'features/presentation/bloc/weather_bloc.dart';
import 'features/presentation/pages/main_screen.dart';

void main() {
  GetIt.I.registerLazySingleton<Dio>(() => Dio());
  GetIt.I.registerLazySingleton<WeatherRepository>(() => WeatherRepository(dio: GetIt.I<Dio>()));
  GetIt.I.registerLazySingleton<WeatherBloc>(() => WeatherBloc(repository: GetIt.I<WeatherRepository>()));

  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<WeatherBloc>(
            create: (context) => WeatherBloc(repository: GetIt.I<WeatherRepository>()),
          ),
          // Add other Bloc providers if needed
        ],
        child: MainApp(),
      ),);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme(),
      home: const MainScreen(),
    );
  }
}
