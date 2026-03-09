import 'package:fodaapp/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';
@freezed

class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.success(T data) = Success<T>;
  const factory ProfileState.failure(ApiErrorModel apiErrorModel) = Error;
}