part of 'add_devices_bloc.dart';

@freezed
class AddDevicesState with _$AddDevicesState {
  factory AddDevicesState({
    required int selectedTab,
    required int indexNumber,
    required ResponseModel submitStatus,
    required bool isLoading,
    required bool isLoaded,
    required bool isSubmitted,
    required DeviceDataModel deviceData,
  }) = _AddDevicesState;

  factory AddDevicesState.initial() {
    return AddDevicesState(
      indexNumber: 0,
      selectedTab: 0,
      submitStatus: ResponseModel(success: false, message: ""),
      isLoading: false,
      isLoaded: false,
      isSubmitted: false,
      deviceData: DeviceDataModel(),
    );
  }
}
