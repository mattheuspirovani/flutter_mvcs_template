import 'package:get_it/get_it.dart';
import '../models/app_model.dart';

class BaseCommand {
  AppModel appModel = GetIt.I.get<AppModel>();
}
