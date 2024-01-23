// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// part 'weather_model.freezed.dart';
// part 'weather_model.g.dart';
//
// @freezed
//  class WeatherModel with _$WeatherModel {
//   const factory WeatherModel({
//     @JsonKey(name: 'location') WeatherLocationModel? weatherLocationModel,
//     // required Location location,
//     @JsonKey(name: 'current') WeatherCurrentModel? weatherCurrentModel
//     // required Current current,
//   }) = _WeatherModel;
//
//   factory WeatherModel.fromJson(Map<String, dynamic> data) => _$WeatherFromJson(data);
// }
//
// @Freezed()
//  class WeatherLocationModel with _$WeatherLocationModel {
//   const factory WeatherLocationModel({
//     @Default('') String name,
//     @Default('') String region,
//     @Default('') String country,
//     @Default(0) double lat,
//     @Default(0) double lon,
//     @Default('') String tzId,
//     @Default(0) int localtimeEpoch,
//     @Default('') String localtime,
//   }) = _$WeatherLocationModel;
//
//   factory WeatherLocationModel.fromJson(Map<String, dynamic> data) => _$WeatherLocationModelFromJson(data);
// }
//
// @freezed
//  class WeatherCurrentModel with _$WeatherCurrentModel {
//   const factory WeatherCurrentModel({
//
//     @Default('') String lastUpdated,
//     @Default(0) double tempC,
//     @Default(0) int isDay,
//     @Default('') Condition condition,
//     @Default(0) double windKph,
//     @Default(0) int humidity,
//     @Default(0) int cloud,
//   }) = _WeatherCurrentModel;
//
//   factory WeatherCurrentModel.fromJson(Map<String, dynamic> data) => _$WeatherCurrentModelFromJson(data);
// }
//
// @freezed
//  class Condition with _$Condition {
//   const factory Condition({
//     required String text,
//   }) = _Condition;
//
//   factory Condition.fromJson(Map<String, dynamic> data) => _$ConditionFromJson(data);
// }
