import 'package:hasnetix/bootstrap.dart';

class ApiConfig {
  ApiConfig(this.baseUrl);

  final String baseUrl;
}

ApiConfig getApiConfig(Flavor flavor) {
  final String baseUrl;
  switch (flavor) {
    case Flavor.stage:
      baseUrl = 'https://hasnetix-stage.onrender.com/api/';
    case Flavor.prod:
      baseUrl = 'https://hasnetix.onrender.com/api/';
  }
  return ApiConfig(baseUrl);
}
