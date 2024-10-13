/// {@template api_repository}
/// A fake API repository
/// {@endtemplate}
class ApiRepository {
  /// {@macro api_repository}
  const ApiRepository();

  /// Fetches TODOS
  List<String> fetchTodos() => ['Teste 1', 'Teste 2', 'Teste 3'];
}
