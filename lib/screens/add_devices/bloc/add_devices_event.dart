part of 'add_devices_bloc.dart';

@freezed
class AddDevicesEvent with _$AddDevicesEvent {
  const factory AddDevicesEvent.started() = _Started;

  const factory AddDevicesEvent.selectTab(int id) = SelectTab;
  // const factory HomeEvent.selectDropDown(int id) = SelectDropDown;

  factory AddDevicesEvent.setLoading() = SetLoading;
  factory AddDevicesEvent.submitDeviceDetails() = SubmitDeviceDetails;

  factory AddDevicesEvent.onChangeImplementDate(DateTime implementDate) =
      OnChangeImplementDate;

  factory AddDevicesEvent.onChangeSerialNumber(String serialNumber) =
      OnChangeSerialNumber;
  factory AddDevicesEvent.onChangeDeviceName(String deviceName) =
      OnChangeDeviceName;
  factory AddDevicesEvent.onChangeDeviceType(String deviceType) =
      OnChangeDeviceType;
}
