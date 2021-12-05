import 'package:flutter/material.dart';
import '../commands/autenticacao/finalizar_onboarding_command.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => FinalizarOnboarding().execute(),
            child: const Text("Finalizar Onboarding")),
      ),
    );
  }
}
