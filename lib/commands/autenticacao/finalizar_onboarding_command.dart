import 'package:mvcs_template/commands/base_command.dart';

class FinalizarOnboarding extends BaseCommand {
  Future<void> execute() async {
    appModel.onboardingFinalizado = true;
  }
}
