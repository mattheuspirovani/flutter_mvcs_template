import '../base_command.dart';
import '../../dto/usuario_dto.dart';

class LoginCommand extends BaseCommand {
  Future<void> execute() async {
    await Future.delayed(const Duration(seconds: 3));
    appModel.usuario = UsuarioDto()
      ..nome = "mattheus"
      ..apelido = "mpirovani";
  }
}
