
import 'package:weather_service/src/models/current_weather.dart';
import 'package:weather_service/src/models/location.dart';

class Weather {
  late Location location;
  late CurrentWeather currentWeather;

  Weather(Map<String, dynamic> json) {
    location = Location.fromJson(json['location']);
    currentWeather = CurrentWeather.fromJson(json['current']);
  }
}
