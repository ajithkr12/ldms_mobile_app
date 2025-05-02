import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/constants/device_type.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_with_icon.dart';
import 'package:ldms_mobile_app/screens/add_devices/bloc/add_devices_bloc.dart';
// import 'package:ldms_mobile_app/screens/edit_existing_devices/edit_existing_devices.dart';

import 'widgets/edit_existing_device.dart';

class AddDevices extends StatelessWidget {
  const AddDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddDevicesBloc()..add(const AddDevicesEvent.started()),
      child: Builder(
        builder: (context) {
          final addDevicesBloc = context.read<AddDevicesBloc>(); // Access the AddDevicesBloc here
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xffEDF1FB),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      HeadingWithIconWidget(
                        heading: "Devices",
                        iconUrl: "assets/icons/devices.svg",
                      ),
                      SizedBox(width: 12.0),
                    ],
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.add, color: Colors.black),
                  onPressed: () {
                    _showCreateDevicePopup(context, addDevicesBloc); // Pass the bloc to the popup
                  },
                ),
              ],
            ),
            body: const EditExistingDevice(), // Use EditExistingDevice as the main body
          );
        },
      ),
    );
  }

  void _showCreateDevicePopup(BuildContext context, AddDevicesBloc addDevicesBloc) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlocProvider.value(
          value: addDevicesBloc,
          // create: (context) => AddDevicesBloc()..add(const AddDevicesEvent.started()),
          child: BlocBuilder<AddDevicesBloc, AddDevicesState>(
            builder: (context, state) {
              return AlertDialog(
                contentPadding: const EdgeInsets.all(16.0),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        initialValue: state.deviceData.serialNumber,
                        onChanged: (value) {
                          context.read<AddDevicesBloc>().add(AddDevicesEvent.onChangeSerialNumber(value));
                        },
                        decoration: InputDecoration(
                          labelText: "Enter Serial Number",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.5)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: state.deviceData.deviceName,
                        onChanged: (value) {
                          context.read<AddDevicesBloc>().add(AddDevicesEvent.onChangeDeviceName(value));
                        },
                        decoration: InputDecoration(
                          labelText: "Enter Device Name",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.5)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField(
                        value: state.deviceData.deviceType,
                        onChanged: (newValue) {
                          context.read<AddDevicesBloc>().add(AddDevicesEvent.onChangeDeviceType(newValue!));
                        },
                        items: DeviceType.deviceTypeList.map<DropdownMenuItem<String>>((device) {
                          return DropdownMenuItem<String>(
                            value: device['value'],
                            child: Text(device['name']),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          labelText: "Device Type",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.5)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      CustomButton(
                        inputText: "Submit",
                        backgroundColor: AppColors.customButtonColor,
                        fontColor: AppColors.customButtonFontColor,
                        onButtonPressed: () {
                          context.read<AddDevicesBloc>().add(AddDevicesEvent.submitDeviceDetails());
                          Navigator.of(context).pop(); // Close the popup
                        },
                        borderRadius: 12,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
