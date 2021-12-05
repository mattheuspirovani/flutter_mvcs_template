import 'package:flutter/material.dart';
import '../dto/usuario_dto.dart';

class AppModel extends ChangeNotifier {
  UsuarioDto? _usuarioDto;
  UsuarioDto? get usuario => _usuarioDto;
  set usuario(UsuarioDto? usuario) {
    _usuarioDto = usuario;
    notifyListeners();
  }
}
