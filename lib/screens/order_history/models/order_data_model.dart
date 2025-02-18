import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_data_model.freezed.dart';

@freezed
class OrderDataModel with _$OrderDataModel {
  factory OrderDataModel({
    String? id,
    String? deviceId,
    DateTime? orderDate,
  }) = _OrderDataModel;
}

@freezed
class ResponseModel with _$ResponseModel {
  factory ResponseModel({
    bool? success,
    String? message,
  }) = _ResponseModel;
}
