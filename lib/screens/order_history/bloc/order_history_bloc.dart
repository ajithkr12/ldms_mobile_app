import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ldms_mobile_app/0-services/order_services.dart';
import 'package:ldms_mobile_app/models/order_model/order_model.dart';
import 'package:ldms_mobile_app/screens/add_devices/models/device_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_event.dart';
part 'order_history_state.dart';
part 'order_history_bloc.freezed.dart';

@injectable
class OrderHistoryBloc extends Bloc<OrderHistoryEvent, OrderHistoryState> {
  OrderHistoryBloc() : super(OrderHistoryState.initial()) {
    on<_Started>((event, emit) async {
      var data = await OrderServices.getOrdersByCustomerId();
      emit(state.copyWith(orderHistoryList: data ?? []));
      print(data);
    });

    on<OnChangeResourceId>((event, emit) async {
      var updated = state.placeOrderData!.copyWith(resourceType: event.deviceId);

      emit(state.copyWith(placeOrderData: updated));
    });

    on<OnChangeOrderDate>((event, emit) async {
      var updated = state.placeOrderData!.copyWith(customerChosenTime: event.orderDate);

      emit(state.copyWith(placeOrderData: updated));
    });

    on<SubmitOrderDetails>((event, emit) async {
      ResponseModel initialEmit = ResponseModel(success: false, message: "");

      emit(state.copyWith(isSubmitted: true, submitStatus: initialEmit));

      initialEmit = ResponseModel(success: false, message: "");

      emit(state.copyWith(isSubmitted: true, submitStatus: initialEmit));

      try {
        OrderModel? response = await OrderServices.placeOrder(state.placeOrderData!);
        if (response != null) {
          emit(state.copyWith(
              isSubmitted: false, submitStatus: ResponseModel(success: true, message: "Order placed successfully")));
        } else {
          emit(state.copyWith(
              isSubmitted: false, submitStatus: ResponseModel(success: false, message: "Failed to place order")));
        }
      } catch (error) {
        emit(
            state.copyWith(isSubmitted: false, submitStatus: ResponseModel(success: false, message: error.toString())));
      }
    });
  }
}
