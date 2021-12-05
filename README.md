# Flutter MVC+S Template

Projeto de exemplo usando a arquitetura MVC + S, conforme exemplificado [nesse artigo](https://blog.gskinner.com/archives/2020/09/flutter-state-management-with-mvcs.html). Contudo, no exemplo contido nesse repositório além do [Provider](https://pub.dev/packages/provider) está sendo utilizada a biblioteca [GetIt](https://pub.dev/packages/get_it).

# Funcionamento

Na inicialização do app, método **main()**, é executado o setup do Service Locator (get_it) método **inicializarServiceLocator()**. A partir daí todos os models, que herdam de ChangeNotifier, devem ser utilizados através do construtor *value* da classe **ChangeNotifierProvider**. O exemplo a seguir, ilustra melhor o cenário:

```
Widget build(BuildContext context) {
    final appModel = GetIt.I.get<AppModel>();

    return ChangeNotifierProvider.value(
        value: appModel,
        child: Builder(builder: (context) {
```

Observe que primeiro é recuperada a instância do model (AppModel), que por sua vez é repassada ao construtor *value* da classe **ChangeNotifierProvider**. A partir daí, todos os descentendes desse widget terão acesso a mesma instância do AppModel.

Executado esse processo inicial, é criado o widget *Stateful* [**AppScaffold**](https://github.com/mattheuspirovani/flutter_mvcs_template/blob/main/lib/app_scaffold.dart) que, em sua inicialização, deverá invocar rotinas de inicialização do app (recuperação de dados do usuário, prefências do app, etc) e por fim, no build, deverá observar a existência de um usuário. Finalizada a inicialização, não havendo um usuário ele deverá exibir a view de [onboarding](https://github.com/mattheuspirovani/flutter_mvcs_template/blob/main/lib/views/onboarding_view.dart), senão será apresentada a view [inicial do app](https://github.com/mattheuspirovani/flutter_mvcs_template/blob/main/lib/views/inicio_view.dart), uma vez que temos um usuário *logado*. 

A partir da view de Inicio toda a navegação deve ser feita via *Navigator.pushNamed*, lembrando que as rotas são definidas na classe MaterialApp instanciada na classe [App](https://github.com/mattheuspirovani/flutter_mvcs_template/blob/main/lib/main.dart).




