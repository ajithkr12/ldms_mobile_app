part of 'add_devices_bloc.dart';

@freezed
class AddDevicesEvent with _$AddDevicesEvent {
  const factory AddDevicesEvent.started() = Started;
  const factory AddDevicesEvent.selectTab(int id) = SelectTab;
  factory AddDevicesEvent.setLoading() = SetLoading;
  factory AddDevicesEvent.submitDeviceDetails() = SubmitDeviceDetails;
  factory AddDevicesEvent.onChangeSerialNumber(String serialNumber) = OnChangeSerialNumber;
  factory AddDevicesEvent.onChangeDeviceName(String deviceName) = OnChangeDeviceName;
  factory AddDevicesEvent.onChangeDeviceType(String deviceType) = OnChangeDeviceType;
}
