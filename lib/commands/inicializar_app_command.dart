import '../commands/base_command.dart';

class InicializarAppCommand extends BaseCommand {
  Future<void> execute() async {
    await Future.delayed(const Duration(seconds: 4));
  }
}
