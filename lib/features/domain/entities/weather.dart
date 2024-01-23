import '../../data/models/weather_model.dart';

class Location {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String tzId;
  final int localtimeEpoch;
  final String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory Location.fromModel(LocationModel model) {
    return Location(
      name: model.name,
      region: model.region,
      country: model.country,
      lat: model.lat,
      lon: model.lon,
      tzId: model.tzId,
      localtimeEpoch: model.localtimeEpoch,
      localtime: model.localtime,
    );
  }
}

// entities/current.dart
class Current {
  final String lastUpdated;
  final double tempC;
  final int isDay;
  final String conditionText;
  final double windKph;
  final int humidity;
  final int cloud;

  Current({
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.conditionText,
    required this.windKph,
    required this.humidity,
    required this.cloud,
  });

  factory Current.fromModel(CurrentModel model) {
    return Current(
      lastUpdated: model.lastUpdated,
      tempC: model.tempC,
      isDay: model.isDay,
      conditionText: model.condition['text'],
      windKph: model.windKph,
      humidity: model.humidity,
      cloud: model.cloud,
    );
  }
}
