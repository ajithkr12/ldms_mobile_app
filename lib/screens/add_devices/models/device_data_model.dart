import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_data_model.freezed.dart';
// part 'profile_data_model.g.dart';

@freezed
class DeviceDataModel with _$DeviceDataModel {
  factory DeviceDataModel({
    String? id,
    String? serialNumber,
    String? deviceName,
    DateTime? implementDate,
    String? deviceType,
  }) = _DeviceDataModel;
}

@freezed
class ResponseModel with _$ResponseModel {
  factory ResponseModel({
    bool? success,
    String? message,
  }) = _ResponseModel;
}
