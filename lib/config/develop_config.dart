import '../config/base_config.dart';

class DevelopConfig implements BaseConfig {
  @override
  String get apiUrl => '';

  @override
  bool get production => false;
}
