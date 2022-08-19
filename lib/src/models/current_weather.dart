
import 'package:weather_service/src/models/air_quality.dart';
import 'package:weather_service/src/models/condition.dart';

class CurrentWeather {
  String? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? visKm;
  double? visMiles;
  double? uv;
  double? gustMph;
  double? gustKph;
  AirQuality? airQuality;

  CurrentWeather({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
    required this.airQuality,
  });

  CurrentWeather.fromJson(Map<String, dynamic> currentWeather) {
    lastUpdatedEpoch = currentWeather['last_updated_epoch'].toString();
    lastUpdated = currentWeather['last_updated'];
    tempC = currentWeather['temp_c'];
    tempF = currentWeather['temp_f'];
    isDay = currentWeather['is_day'];
    condition = Condition.fromJson(currentWeather['condition']);
    windMph = currentWeather['wind_mph'];
    windKph = currentWeather['wind_kph'];
    windDegree = currentWeather['wind_degree'];
    windDir = currentWeather['wind_dir'];
    pressureMb = currentWeather['pressure_mb'];
    pressureIn = currentWeather['pressure_in'];
    precipMm = currentWeather['precip_mm'];
    precipIn = currentWeather['precip_in'];
    humidity = currentWeather['humidity'];
    cloud = currentWeather['cloud'];
    feelslikeC = currentWeather['feelslike_c'];
    feelslikeF = currentWeather['feelslike_f'];
    visKm = currentWeather['vis_km'];
    visMiles = currentWeather['vis_miles'];
    uv = currentWeather['uv'];
    gustMph = currentWeather['gust_mph'];
    gustKph = currentWeather['gust_kph'];
    airQuality = currentWeather['air_quality'] != null
        ? AirQuality.fromJson(currentWeather['air_quality'])
        : null;
  }
}
