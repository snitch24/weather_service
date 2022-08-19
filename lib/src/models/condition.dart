class Condition {
  String weatherCondition;
  String iconUrl;
  int weatherCode;

  Condition(
      {required this.iconUrl,
      required this.weatherCondition,
      required this.weatherCode});

  Condition.fromJson(Map<String, dynamic> condition)
      : iconUrl = condition['icon'],
        weatherCondition = condition['text'],
        weatherCode = condition['code'];
}
