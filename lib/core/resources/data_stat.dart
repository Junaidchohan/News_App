import 'package:dio/dio.dart';

abstract class DataStat<T> {
  final T? data;
  final DioException? error;

  DataStat(this.data, this.error);
}

class DataSuccess<T> extends DataStat<T> {
  DataSuccess(T data) : super(data, data as DioException?);
}

class DataError<T> extends DataStat<T> {
  DataError(T error) : super(error, error as DioException?);
}
