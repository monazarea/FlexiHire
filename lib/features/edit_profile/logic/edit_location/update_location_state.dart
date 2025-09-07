import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_location_state.freezed.dart';

@freezed
class UpdateLocationState with _$UpdateLocationState {
  const factory UpdateLocationState.initial() = _Initial;
  const factory UpdateLocationState.loading() = UpdateLocationLoading;
  const factory UpdateLocationState.success(String message) = UpdateLocationSuccess;
  const factory UpdateLocationState.error(String error) = UpdateLocationError;
}