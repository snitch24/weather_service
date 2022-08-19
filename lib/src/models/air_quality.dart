class AirQuality {
  double co;
  double no2;
  double o3;
  double so2;
  double pm2_5;
  double pm10;
  int usEpaIndex;
  int gbDefraIndex;
  AirQuality({
    required this.co,
    required this.no2,
    required this.o3,
    required this.so2,
    required this.pm2_5,
    required this.pm10,
    required this.usEpaIndex,
    required this.gbDefraIndex,
  });

  AirQuality.fromJson(Map<String, dynamic> airQuality)
      : co = airQuality["co"],
        no2 = airQuality["no2"],
        o3 = airQuality["o3"],
        so2 = airQuality["so2"],
        pm2_5 = airQuality["pm2_5"],
        pm10 = airQuality["pm10"],
        usEpaIndex = airQuality["us-epa-index"],
        gbDefraIndex = airQuality["gb-defra-index"];
}
