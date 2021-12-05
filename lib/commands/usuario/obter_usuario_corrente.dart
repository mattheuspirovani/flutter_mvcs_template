import '../base_command.dart';
import '../../dto/usuario_dto.dart';

class ObterUsuarioCorrente extends BaseCommand {
  Future<UsuarioDto?> execute() async {
    await Future.delayed(const Duration(seconds: 2));
    return appModel.usuario;
  }
}
