import 'package:flutter/material.dart';
import '../commands/usuario/obter_usuario_corrente.dart';
import '../dto/usuario_dto.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: SafeArea(
          child: Center(
        child: FutureBuilder<UsuarioDto?>(
          future: ObterUsuarioCorrente().execute(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return Text(snapshot.data!.nome!);
            }
          },
        ),
      )),
    );
  }
}
