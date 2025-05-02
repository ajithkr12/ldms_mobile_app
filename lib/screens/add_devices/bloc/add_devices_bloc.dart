import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ldms_mobile_app/0-services/device_services.dart';
import 'package:ldms_mobile_app/models/device_model/device_model.dart';
import 'package:ldms_mobile_app/screens/add_devices/models/device_data_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_devices_event.dart';
part 'add_devices_state.dart';
part 'add_devices_bloc.freezed.dart';

@injectable
class AddDevicesBloc extends Bloc<AddDevicesEvent, AddDevicesState> {
  int postPage = 0;
  AddDevicesBloc() : super(AddDevicesState.initial()) {
    on<Started>((event, emit) async {
      print("HERE");
      List<UserRegisteredDevice> data = await DeviceServices.getDevicesByCustomer() ?? [];

      // postPage = 0;
      emit(state.copyWith(deviceList: data));
      // add(const GetContents());
    });

    on<SelectTab>((event, emit) {
      postPage = 0;
      emit(state.copyWith(selectedTab: event.id, indexNumber: 0));
      // add(const GetContents());
    });

    on<OnChangeSerialNumber>((event, emit) async {
      var updated = state.deviceData.copyWith(serialNumber: event.serialNumber);

      emit(state.copyWith(deviceData: updated));
    });
    on<OnChangeDeviceName>((event, emit) async {
      var updated = state.deviceData.copyWith(deviceName: event.deviceName);

      emit(state.copyWith(deviceData: updated));
    });

    on<OnChangeDeviceType>((event, emit) async {
      var updated = state.deviceData.copyWith(deviceType: event.deviceType);

      emit(state.copyWith(deviceData: updated));
    });

    // on<OnChangeImplementDate>((event, emit) async {
    //   var updated = state.deviceData.copyWith(implementDate: event.implementDate);

    //   emit(state.copyWith(deviceData: updated));
    // });

    on<SubmitDeviceDetails>((event, emit) async {
      ResponseModel initialEmit = ResponseModel(success: false, message: "");
      // print("Serial Number: ${state.deviceData.serialNumber}");
      // print("Device Name: ${state.deviceData.deviceName}");
      // print("Device Type: ${state.deviceData.deviceType}");
      emit(state.copyWith(isSubmitted: true, submitStatus: initialEmit));
      await DeviceServices.registerDevice(
        state.deviceData.deviceName!,
        state.deviceData.deviceType!,
        state.deviceData.serialNumber!,
      );
      // final response = {};

      // emit(state.copyWith(isSubmitted: false, submitStatus: response));
    });
  }
}
