import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? error;

  const DataState({this.data, this.error});
}

class DataLoading<T> extends DataState<T> {}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}

class Empty<T> extends DataState<T> {}

class Data<T> extends DataState<T> {
  const Data(T data) : super(data: data);
}

class DataList<T> extends DataState<List<T>> {
  const DataList(List<T> data) : super(data: data);
}

class EmptyList<T> extends DataState<List<T>> {}

class ErrorList<T> extends DataState<List<T>> {
  const ErrorList(DioException error) : super(error: error);
}

class DataMap<K, V> extends DataState<Map<K, V>> {
  const DataMap(Map<K, V> data) : super(data: data);
}

class EmptyMap<K, V> extends DataState<Map<K, V>> {}

class ErrorMap<K, V> extends DataState<Map<K, V>> {
  const ErrorMap(DioException error) : super(error: error);
}
