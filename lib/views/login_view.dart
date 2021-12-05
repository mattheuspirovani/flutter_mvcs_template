import 'package:flutter/material.dart';
import '../commands/autenticacao/login_command.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _carregando = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: _construirConteudo()));
  }

  Widget _construirConteudo() {
    if (_carregando) {
      return const CircularProgressIndicator();
    } else {
      return ElevatedButton(
          onPressed: () async {
            setState(() {
              _carregando = true;
            });
            await LoginCommand().execute();
          },
          child: const Text("Entrar"));
    }
  }
}
