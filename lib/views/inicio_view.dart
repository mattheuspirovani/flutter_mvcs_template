import 'package:flutter/material.dart';
import '../commands/autenticacao/logout_command.dart';

class InicioView extends StatefulWidget {
  const InicioView({Key? key}) : super(key: key);

  @override
  State<InicioView> createState() => _InicioViewState();
}

class _InicioViewState extends State<InicioView> {
  bool _carregando = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/perfil');
                },
                child: const Icon(
                  Icons.person_outline,
                  size: 26.0,
                ),
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Você está logado!"),
            const SizedBox(
              height: 16,
            ),
            _carregando
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _carregando = true;
                      });
                      LogoutCommand().execute();
                    },
                    child: const Text("Sair"))
          ],
        ),
      ),
    );
  }
}
