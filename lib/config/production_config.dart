import '../config/base_config.dart';

class ProductionConfig implements BaseConfig {
  @override
  String get apiUrl => '';

  @override
  bool get production => true;
}
