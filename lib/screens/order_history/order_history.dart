import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/0-services/0-core/debouncer.dart';
import 'package:ldms_mobile_app/0-services/0-core/utility_services.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/constants/device_type.dart';
import 'package:ldms_mobile_app/constants/place_types.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_subheading_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_with_icon.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/tab_menu_card.dart';
import 'package:ldms_mobile_app/screens/home/bloc/home_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ldms_mobile_app/screens/order_history/bloc/order_history_bloc.dart';

class OrderHistory extends StatelessWidget {
  void onPressed() {
    print('Icon pressed');
  }

  final List<Map<String, dynamic>> devices = [
    {
      "title": "Device 1",
      "status": "Healthy",
      "percentage": 78,
    },
    {
      "title": "Device 2",
      "status": "Warning",
      "percentage": 50,
    },
    {
      "title": "Device 3",
      "status": "Critical",
      "percentage": 15,
    },
    {
      "title": "Device 4",
      "status": "Warning",
      "percentage": 50,
    },
    {
      "title": "Device 5",
      "status": "Healthy",
      "percentage": 78,
    },
    {
      "title": "Device 6",
      "status": "Warning",
      "percentage": 50,
    },
    {
      "title": "Device 7",
      "status": "Critical",
      "percentage": 15,
    },
    {
      "title": "Device 8",
      "status": "Warning",
      "percentage": 50,
    }
  ];

  final List<Map<String, dynamic>> orders = [
    {
      "orderId": "123",
      "deviceName": "Device 1",
      "deviceTypeId": "0",
      "deviceType": "Water",
      "orderStatusId": "1",
      "orderStatusName": "Pending",
      "orderDate": "01/01/2025 10:30AM"
    },
    {
      "orderId": "125",
      "deviceName": "Device 4",
      "deviceTypeId": "1",
      "deviceType": "lpg",
      "orderStatusId": "2",
      "orderStatusName": "Order Confirm",
      "orderDate": "01/01/2025 10:30AM"
    },
    {
      "orderId": "129",
      "deviceName": "Device 8",
      "deviceTypeId": "1",
      "deviceType": "lpg",
      "orderStatusId": "3",
      "orderStatusName": "Canceled",
      "orderDate": "01/01/2025 10:30AM"
    },
    {
      "orderId": "130",
      "deviceName": "Device 2",
      "deviceTypeId": "0",
      "deviceType": "Water",
      "orderStatusId": "4",
      "orderStatusName": "Out For Delivery",
      "orderDate": "01/01/2025 10:30AM"
    },
    {
      "orderId": "150",
      "deviceName": "Device 3",
      "deviceTypeId": "0",
      "deviceType": "Water",
      "orderStatusId": "4",
      "orderStatusName": "Out For Delivery",
      "orderDate": "01/01/2025 10:30AM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    const userProfilePicture = "";
    final searchController = TextEditingController();
    final searchDebouncer = Debouncer(milliseconds: 500);
    int indexNumber = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEDF1FB),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(
              children: [
                HeadingWithIconWidget(
                  heading: "Order History",
                  iconUrl: "assets/icons/water.svg",
                ),
                SizedBox(width: 12.0),
              ],
            )),
            CustomIconButton(
              onButtonPressed: () => _showCustomDialog(context), // Use a lambda to delay calling the function
              iconPath: 'assets/icons/plus.svg',
              iconColor: Colors.black,
            )
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => HomeBloc(),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TabBarSection(state: state),
                  // Text(
                  //   "hai",
                  //   style: TextStyle(color: Color(0xFF23AC34), fontSize: 24),
                  // ),
                  // SizedBox(height: 20),
                  Expanded(
                    child: GridView.builder(
                      itemCount: orders.length, // Number of device cards
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 3.0,
                      ),
                      itemBuilder: (context, index) {
                        final order = orders[index];
                        // Assign color based on index pattern

                        return OrderHistoryCard(
                            index: index,
                            deviceName: order["deviceName"],
                            deviceTypeId: order["deviceTypeId"],
                            deviceType: order["deviceType"],
                            orderStatusId: order["orderStatusId"],
                            orderStatusName: order["orderStatusName"],
                            orderDate: order["orderDate"]);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _showCustomDialog(context),
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      //   backgroundColor: Colors.blueGrey[900],
      // ),
    );
  }
}

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key, this.state});

  final dynamic state;

  @override
  Widget build(BuildContext context) {
    return Material(
      // Add Material widget to make sure it handles gestures
      // color: AppColorsNew.white,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            Container(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List.generate(
                    ExploreTabTypes.list.length,
                    (index) => TabMenuCard(
                      onClick: () {
                        BlocProvider.of<HomeBloc>(context).add(HomeEvent.selectTab(index));
                      },
                      label: ExploreTabTypes.list[index]["name"],
                      iconUrl: ExploreTabTypes.list[index]["iconUrl"],
                      icon: ExploreTabTypes.list[index]["icon"],
                      isActive: state.selectedTab == index,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderHistoryCard extends StatelessWidget {
  final int index;
  final String deviceName;
  final String deviceTypeId;
  final String deviceType;
  final String orderStatusId;
  final String orderStatusName;
  final String orderDate;

  OrderHistoryCard({
    required this.index,
    required this.deviceName,
    required this.deviceTypeId,
    required this.deviceType,
    required this.orderStatusId,
    required this.orderStatusName,
    required this.orderDate,
  });
  void onPressed() {
    print('Icon pressed');
  }

  @override
  Widget build(BuildContext context) {
    // Set status color based on status ID
    Color statusColor;
    String statusIcon;
    switch (orderStatusId) {
      case "1":
        statusColor = AppColors.PendingColor;
        statusIcon = "assets/icons/clock.svg";
        break;
      case "2":
        statusColor = AppColors.orderConfirmColor;
        statusIcon = "assets/icons/tick.svg";

        break;
      case "3":
        statusColor = AppColors.canceledColor;
        statusIcon = "assets/icons/close.svg";

        break;
      case "4":
        statusColor = AppColors.outOfDeliveryColor;
        statusIcon = "assets/icons/tick.svg";

        break;
      default:
        statusColor = Colors.grey;
        statusIcon = "";
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order ${index + 1}", style: TextStyle(color: Colors.black)),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 18),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.1), // Background color
                        borderRadius: BorderRadius.circular(18), // Rounded corners
                        // border: Border.all(
                        //   color: statusColor,
                        //   width: 1, // Border width
                        // ),
                      ),
                      child: Text(orderStatusName,
                          style: TextStyle(color: statusColor, fontSize: 12, fontWeight: FontWeight.w400))),
                ],
              ),
              Divider(
                color: Colors.grey, // Line color
                thickness: 0.5, // Line thickness
                indent: 0, // Left spacing
                endIndent: 0, // Right spacing
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        CustomIconButton(
                          onButtonPressed: onPressed,
                          iconPath: statusIcon,
                          backgroundColor: statusColor,
                          iconColor: statusColor,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(deviceName, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            Text("$deviceType", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orderDate, style: TextStyle(color: Colors.black)),
                      Text("$orderDate", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevents closing by tapping outside
    builder: (context) {
      // Get device width and height
      double screenWidth = MediaQuery.of(context).size.width;
      double screenHeight = MediaQuery.of(context).size.height;

      final _formKey = GlobalKey<FormState>();
      String? _category;
      TimeOfDay? _reminderTime;
      String? _newCategory;
      final List<String> _categories = ['Personal', 'Work', 'Other'];

      return BlocProvider(
        create: (context) => OrderHistoryBloc(),
        child: BlocBuilder<OrderHistoryBloc, OrderHistoryState>(
          builder: (mainContext, state) {
            return Dialog(
              insetPadding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 60.0,
                          child: DropdownButtonFormField(
                            style: const TextStyle(color: AppColors.textFieldFontColor, fontSize: 16),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(5.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(5.5)),
                              labelText: "Device Type",
                              labelStyle: const TextStyle(color: AppColors.textFieldLabelColor, fontSize: 16),
                              filled: true,
                              fillColor: AppColors.textFieldFillColor,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8.0))),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            ),
                            value: state.orderData.deviceId,
                            dropdownColor: AppColors.textFieldFillColor,
                            iconEnabledColor: AppColors.textFieldBorderColor,
                            onChanged: (newValue) {
                              mainContext.read<OrderHistoryBloc>().add(OrderHistoryEvent.onChangeDeviceId(newValue!));
                            },
                            items: DeviceType.deviceTypeList.map<DropdownMenuItem<String>>((device) {
                              return DropdownMenuItem<String>(
                                value: device['name'],
                                child: Row(
                                  children: [
                                    Icon(
                                      device['icon'],
                                      color: AppColors.textFieldFontColor,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      device['name'],
                                      style: const TextStyle(color: AppColors.textFieldFontColor),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),

                        SizedBox(
                          height: 36,
                        ),

                        // DATE  START/////////////////////////////////////////////

                        CupertinoButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              showModalBottomSheet<void>(
                                  context: mainContext,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 260,
                                      color: AppColors.textFieldBorderColor,
                                      child: CupertinoTheme(
                                        data: const CupertinoThemeData(
                                          textTheme: CupertinoTextThemeData(
                                            dateTimePickerTextStyle:
                                                TextStyle(fontSize: 24, color: AppColors.textFieldFontColor),
                                          ),
                                        ),
                                        child: CupertinoDatePicker(
                                          initialDateTime: state.orderData.orderDate,
                                          mode: CupertinoDatePickerMode.dateAndTime,
                                          use24hFormat: false,
                                          showDayOfWeek: true,
                                          onDateTimeChanged: (DateTime newDate) {
                                            mainContext
                                                .read<OrderHistoryBloc>()
                                                .add(OrderHistoryEvent.onChangeOrderDate(newDate));
                                          },
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              height: 60.0,
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.textFieldBorderColor //                   <--- border color
                                      // width: 5.0,
                                      ),
                                  borderRadius: BorderRadius.circular(5.5),
                                  color: AppColors.textFieldFillColor),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.calendar_month_rounded,
                                    color: AppColors.textFieldFontColor,
                                    // size: 24.0,
                                  ),
                                  const SizedBox(width: 12),
                                  CustomText(
                                    text:
                                        '${state.orderData.orderDate?.day}/${state.orderData.orderDate?.month}/${state.orderData.orderDate?.year} ${state.orderData.orderDate?.hour}:${state.orderData.orderDate?.minute}',
                                    color: AppColors.textFieldFontColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: screenWidth / 2.5,
                              child: CustomButton(
                                inputText: "CANCEL",
                                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                                fontColor: AppColors.customButtonColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                onButtonPressed: () {
                                  Navigator.pop(context); // Navigate back to the previous screen
                                },
                                borderRadius: 8,
                                borderColor: AppColors.customButtonColor,
                                height: 42,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 2.5,
                              child: CustomButton(
                                inputText: "SUBMIT",
                                backgroundColor: AppColors.customButtonColor,
                                fontColor: AppColors.customButtonFontColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                onButtonPressed: () {
                                  mainContext.read<OrderHistoryBloc>().add(OrderHistoryEvent.submitOrderDetails());
                                },
                                borderRadius: 8,
                                height: 42,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: double.infinity,
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       if (_formKey.currentState!.validate()) {
                        //         if (_category == 'Other' &&
                        //             _newCategory != null &&
                        //             _newCategory!.isNotEmpty) {
                        //           _categories.add(_newCategory!);
                        //           _category = _newCategory;
                        //         }
                        //         Navigator.of(context).pop();
                        //       }
                        //     },
                        //     style: ButtonStyle(
                        //       backgroundColor:
                        //           const WidgetStatePropertyAll(TColors.appPrimaryColor),
                        //       shape: WidgetStatePropertyAll(
                        //         RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(4),
                        //         ),
                        //       ),
                        //     ),
                        //     child: const Text(
                        //       'Save',
                        //       style: TextStyle(color: Colors.black),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );
}


         // Row(
          //   children: [
          //     ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         minimumSize: Size.fromHeight(52),
          //         backgroundColor: Colors.amber,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(50), // Border radius
          //         ),
          //       ),
          //       onPressed: () {},
          //       child: Text("inputText",
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 18,
          //           )),
          //     )
          //     // CustomButton(
          //     //     inputText: "Submit",
          //     //     backgroundColor: AppColors.customButtonColor,
          //     //     fontColor: AppColors.customButtonFontColor,
          //     //     onButtonPressed: () {},
          //     //     borderRadius: 12),
          //   ],
          // )