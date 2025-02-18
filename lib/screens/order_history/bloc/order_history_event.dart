part of 'order_history_bloc.dart';

@freezed
class OrderHistoryEvent with _$OrderHistoryEvent {
  const factory OrderHistoryEvent.started() = _Started;

  // const factory OrderHistoryEvent.selectDropDown(int id) = SelectDropDown;

  factory OrderHistoryEvent.setLoading() = SetLoading;
  factory OrderHistoryEvent.submitOrderDetails() = SubmitOrderDetails;

  factory OrderHistoryEvent.onChangeOrderDate(DateTime orderDate) =
      OnChangeOrderDate;

  factory OrderHistoryEvent.onChangeDeviceId(String deviceId) =
      OnChangeDeviceId;
}
