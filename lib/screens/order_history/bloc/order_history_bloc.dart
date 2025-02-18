import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ldms_mobile_app/screens/order_history/models/order_data_model.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_event.dart';
part 'order_history_state.dart';
part 'order_history_bloc.freezed.dart';

@injectable
class OrderHistoryBloc extends Bloc<OrderHistoryEvent, OrderHistoryState> {
  OrderHistoryBloc() : super(OrderHistoryState.initial()) {
    on<OnChangeDeviceId>((event, emit) async {
      var updated = state.orderData.copyWith(deviceId: event.deviceId);

      emit(state.copyWith(orderData: updated));
    });

    on<OnChangeOrderDate>((event, emit) async {
      var updated = state.orderData.copyWith(orderDate: event.orderDate);

      emit(state.copyWith(orderData: updated));
    });

    on<SubmitOrderDetails>((event, emit) async {
      ResponseModel initialEmit = ResponseModel(success: false, message: "");

      emit(state.copyWith(isSubmitted: true, submitStatus: initialEmit));
      // final response = {};

      // emit(state.copyWith(isSubmitted: false, submitStatus: response));
    });
  }
}
