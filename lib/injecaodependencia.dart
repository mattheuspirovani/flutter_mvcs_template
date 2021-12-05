import 'package:get_it/get_it.dart';
import 'models/app_model.dart';

void iniciarInjecaoDependencia() {
  GetIt.I.registerLazySingleton<AppModel>(() => AppModel());
}
