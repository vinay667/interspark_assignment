part of 'vehicle_bloc.dart';

@freezed
class VehicleState with _$VehicleState {
  const factory VehicleState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingPagination,
    @Default("") String errorMsg,
    @Default([]) List<Data> list,
    Data? empData,
    @Default(true) bool loadMoreData,
  }) = _VehicleState;
}
