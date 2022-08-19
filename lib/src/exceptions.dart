class CustomException implements Exception {
  String errorMessage() {
    return "API-Key can not be null";
  }
}

class ResponseException implements Exception {
  int statusCode;
  ResponseException({required this.statusCode});

  String errorMessage() {
    if (statusCode == 401) {
      return "API key not provided.";
    } else if (statusCode == 400) {
      return "Parameter location not provided or 	No location found with this name";
    } else if (statusCode == 401) {
      return "API Key provided is Wrong";
    } else {
      return "API Code has been disabled or monthly quota is over";
    }
  }
}
