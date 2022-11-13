abstract class UseCase<V, P> {
  Future<V> call(P params);
}