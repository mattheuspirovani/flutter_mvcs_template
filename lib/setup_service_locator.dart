import 'package:get_it/get_it.dart';
import 'models/app_model.dart';

void iniciarServiceLocator() {
  GetIt.I.registerLazySingleton<AppModel>(() => AppModel());
}
