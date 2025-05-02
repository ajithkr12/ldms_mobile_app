import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/screens/add_devices/bloc/add_devices_bloc.dart';
import 'package:ldms_mobile_app/screens/add_devices/widgets/device_list_card.dart';

class EditExistingDevice extends StatelessWidget {
  const EditExistingDevice({super.key});

  @override
  Widget build(BuildContext context) {
    int indexNumber = 0;

    // final List<Map<String, dynamic>> devices = [
    //   {"title": "Device 1", "type": "Water"},
    //   {"title": "Device 2", "type": "Water"},
    //   {"title": "Device 3", "type": "LPG"},
    //   {"title": "Device 4", "type": "Water"},
    //   {"title": "Device 5", "type": "LPG"},
    //   {"title": "Device 6", "type": "Water"},
    //   {"title": "Device 7", "type": "LPG"},
    //   {"title": "Device 8", "type": "LPG"}
    // ];
    return BlocBuilder<AddDevicesBloc, AddDevicesState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    itemCount: state.deviceList!.length, // Number of device cards
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                    ),
                    itemBuilder: (context, index) {
                      // final device = devices[index];
                      final device = state.deviceList![index];
                      // Assign color based on index pattern
                      Color bgColor;
                      Color color;
                      Color headingColor;
                      Color subHeadingColor;
                      // if (index % 8 == 0 || index % 8 == 3 || index % 8 == 4 || index % 8 == 7) {
                      //   bgColor = cardColors[indexNumber];
                      bgColor = device.type == "WATER" ? const Color.fromARGB(130, 11, 93, 233) : Colors.green;
                      color = Colors.white;
                      headingColor = Colors.white;
                      subHeadingColor = Colors.white;
                      indexNumber = indexNumber + 1;
                      // } else {
                      //   bgColor = Colors.white;
                      //   color = cardColors[(indexNumber - 1)];
                      //   headingColor = Colors.black;
                      //   subHeadingColor = Colors.grey;
                      // }

                      return DeviceListCard(
                        title: device.name,
                        // status: device["status"],
                        // percentage: device["percentage"],
                        type: device.type,

                        onDelete: () {
                          print("delete");
                          // Handle delete action
                        },
                        onEdit: () {
                          print("edit");
                          // Handle edit action
                        },

                        color: color,
                        bgColor: bgColor, // Assign color from array
                        headingColor: headingColor,
                        subHeadingColor: subHeadingColor,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
