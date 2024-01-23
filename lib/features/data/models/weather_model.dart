
class LocationModel {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String tzId;
  final int localtimeEpoch;
  final String localtime;

  LocationModel({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
      tzId: json['tz_id'],
      localtimeEpoch: json['localtime_epoch'],
      localtime: json['localtime'],
    );
  }
}

class CurrentModel {
  final String lastUpdated;
  final double tempC;
  final int isDay;
  final Map<String, dynamic> condition;
  final double windKph;
  final int humidity;
  final int cloud;

  CurrentModel({
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.humidity,
    required this.cloud,
  });

  factory CurrentModel.fromJson(Map<String, dynamic> json) {
    return CurrentModel(
      lastUpdated: json['last_updated'],
      tempC: json['temp_c'].toDouble(),
      isDay: json['is_day'],
      condition: json['condition'],
      windKph: json['wind_kph'].toDouble(),
      humidity: json['humidity'],
      cloud: json['cloud'],
    );
  }
}
