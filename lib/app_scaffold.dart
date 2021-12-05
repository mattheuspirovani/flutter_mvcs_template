import 'package:flutter/material.dart';
import 'package:mvcs_template/views/onboarding_view.dart';
import 'package:provider/provider.dart';
import 'commands/inicializar_app_command.dart';
import 'dto/usuario_dto.dart';
import 'models/app_model.dart';
import 'views/inicio_view.dart';
import 'views/login_view.dart';
import 'views/splash_view.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({Key? key}) : super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  bool _inicializandoApp = true;

  @override
  void initState() {
    super.initState();
    _inicializarApp();
  }

  void _inicializarApp() async {
    await InicializarAppCommand().execute();
    setState(() {
      _inicializandoApp = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    UsuarioDto? usuario =
        context.select<AppModel, UsuarioDto?>((value) => value.usuario);
    bool onboardingFinalizado =
        context.select<AppModel, bool>((value) => value.onboardingFinalizado);
    if (_inicializandoApp) {
      return const SplashView();
    } else {
      if (usuario != null) {
        return const InicioView();
      } else if (!onboardingFinalizado) {
        return const OnboardingView();
      } else {
        return const LoginView();
      }
    }
  }
}
