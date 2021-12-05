import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'app_scaffold.dart';
import 'models/app_model.dart';
import 'views/perfil_view.dart';
import 'injecaodependencia.dart';

void main() {
  iniciarInjecaoDependencia();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appModel = GetIt.I.get<AppModel>();

    return ChangeNotifierProvider.value(
      value: appModel,
      child: Builder(builder: (context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const AppScaffold(),
              '/perfil': (context) => const PerfilView(),
            });
      }),
    );
  }
}