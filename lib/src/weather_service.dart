import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:weather_service/src/exceptions.dart';
import 'package:weather_service/src/models/weather.dart';

class WeatherService {
  late final String _apiKey;
  static final WeatherService _instance = WeatherService.instance();
  WeatherService.instance();
  factory WeatherService({required String apiKey}) {
    assert(apiKey.isEmpty, "API Key Cannot be Empty");
    _instance._apiKey = apiKey;
    return _instance;
  }
  // ignore: slash_for_doc_comments
  /**
   * This Function returns a Future[Weather] if data is fetched succesfully or throws an [ResponseException]
   * parameter parameter expects either of the following
   * 
   * Latitude and Longitude (Decimal degree) 
   *      e.g: paramter=48.8567,2.3508
   * 
   *City name 
   *     e.g.: parameter=Paris
   *
   *US zip 
   *     e.g.: parameter=10001
   *
   *UK postcode 
   *     e.g: parameter=SW1
   *
   *Canada postal code 
   *     e.g: parameter=G2J
   *
   *metar:<metar code> 
   *     e.g: parameter=metar:EGLL
   *
   *iata:<3 digit airport code> 
   *     e.g:parameter=iata:DXB
   *
   *auto:ip IP lookup 
   *     e.g: parameter=auto:ip
   *
   *IP address (IPv4 and IPv6 supported) 
   *     e.g: parameter=100.0.0.1
   *
   */
  Future<Weather> getCurrentWeather(
      {bool aqi = true, required String parameter}) async {
    String aqiValue = "yes";
    if (aqi == true) {
      aqiValue = "yes";
    } else {
      aqiValue = "no";
    }
    if (_apiKey.isEmpty) {
      throw CustomException();
    }
    http.Response response = await http.get(
      Uri.parse(
          "https://api.weatherapi.com/v1/current.json?key=$_apiKey&q=$parameter&aqi=$aqiValue"),
    );
    
    if (response.statusCode == 200) {
      return Weather(jsonDecode(response.body));
    } else {
      throw ResponseException(statusCode:response.statusCode);
    }
  }
}
