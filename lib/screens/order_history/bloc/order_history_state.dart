part of 'order_history_bloc.dart';

@freezed
class OrderHistoryState with _$OrderHistoryState {
  factory OrderHistoryState({
    required ResponseModel submitStatus,
    required bool isLoading,
    required bool isLoaded,
    required bool isSubmitted,
    OrderModel? placeOrderData,
    List<OrderModel>? orderHistoryList,
  }) = _OrderHistoryState;

  factory OrderHistoryState.initial() {
    return OrderHistoryState(
      submitStatus: ResponseModel(success: false, message: ""),
      isLoading: false,
      isLoaded: false,
      isSubmitted: false,
      placeOrderData: OrderModel(),
      orderHistoryList: [],
    );
  }
}
