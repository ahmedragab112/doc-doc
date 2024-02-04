import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_responsse.freezed.dart';

@Freezed()
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.data(T data) = Success<T>;
  const factory ApiResponse.error(String message) = Fail<T>;
}
