# Flutter MVCS Template

Projeto de exemplo usando a arquitetura MVC + S, conforme exemplificado [nesse artigo](https://blog.gskinner.com/archives/2020/09/flutter-state-management-with-mvcs.html). Contudo, no exemplo contido nesse repositório além do [Provider](https://pub.dev/packages/provider) está sendo utilizada a biblioteca [GetIt](https://pub.dev/packages/get_it).

# Ciclo de vida

Na inicialização do app, método main(), é executado o setup do Service Locator (get_it) método inicializarServiceLocator(). A partir daí todos os models, que herdam de ChangeNotifier, devem ser utilizados através do construtor *value* da classe ChangeNotifierProvider. O exemplo a seguir, ilustra melhor o cenário:

```
Widget build(BuildContext context) {
    final appModel = GetIt.I.get<AppModel>();

    return ChangeNotifierProvider.value(
        value: appModel,
        child: Builder(builder: (context) {
```

Observe que primeiro é recuperada a instância do model (AppModel), que por sua vez é repassada ao construtor value da classe ChangeNotifierProvider. A partir daí, todos os descentendes desse widget terão acesso a mesma instância do AppModel.
