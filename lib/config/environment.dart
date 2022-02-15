import 'base_config.dart';
import 'develop_config.dart';
import 'production_config.dart';

class Environment {
  Environment._privateConstructor();

  factory Environment() {
    return _singleton;
  }

  static final Environment _singleton = Environment._privateConstructor();

  static const String dev = 'DEV';
  static const String prod = 'PROD';

  late BaseConfig config;

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.prod:
        return ProductionConfig();
      default:
        return DevelopConfig();
    }
  }
}
