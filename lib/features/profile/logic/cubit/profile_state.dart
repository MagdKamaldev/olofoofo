// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_state.freezed.dart';

@freezed
 class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.getProfileLoading() = GetProfileLoading;
  const factory ProfileState.getProfileSuccess(T data) = GetProfileSuccess<T>;
  const factory ProfileState.getProfilefailure({required String error}) = GetProfileError;
 }
