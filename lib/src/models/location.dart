class Location {
  String name;
  String region;
  String country;
  double lattitude;
  double longitude;
  String timeZoneId;
  String localTimeEpoch;
  String localTime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lattitude,
    required this.localTime,
    required this.localTimeEpoch,
    required this.longitude,
    required this.timeZoneId,
  });

  Location.fromJson(Map<String, dynamic> location)
      : name = location['name'],
        region = location['region'],
        country = location['country'],
        lattitude = location['lat'],
        longitude = location['lon'],
        timeZoneId = location['tz_id'],
        localTime = location['localtime'],
        localTimeEpoch = location['localtime_epoch'].toString();

    Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country' : country,
        'lat' : lattitude,
        'lon' : longitude,
        'tz_id' : timeZoneId,
        'localtime' : localTime,
        'localtime_epoch' : localTimeEpoch
      };
}
