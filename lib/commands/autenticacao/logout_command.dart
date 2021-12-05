import '../base_command.dart';

class LogoutCommand extends BaseCommand {
  Future<void> execute() async {
    await Future.delayed(const Duration(seconds: 2));
    appModel.usuario = null;
  }
}
