import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/constants/device_type.dart';
import 'package:ldms_mobile_app/constants/place_types.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_with_icon.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/tab_menu_card.dart';
import 'package:ldms_mobile_app/screens/home/bloc/home_bloc.dart';
import 'package:ldms_mobile_app/screens/order_history/bloc/order_history_bloc.dart';
import 'package:ldms_mobile_app/screens/order_history/widgets/order_history_card.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderHistoryBloc()..add(const OrderHistoryEvent.started()),
      child: OrderHistoryChild(),
    );
  }
}

class OrderHistoryChild extends StatelessWidget {
  void onPressed() {
    print('Icon pressed');
  }

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

  OrderHistoryChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEDF1FB),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                HeadingWithIconWidget(
                  heading: "Order History",
                  iconUrl: "assets/icons/water.svg",
                ),
                SizedBox(width: 12.0),
              ],
            ),
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
            return BlocConsumer<OrderHistoryBloc, OrderHistoryState>(
              listener: (context, orderState) {
                // if (orderState.isSubmitted) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       backgroundColor: Colors.red,
                //       content: Text(
                //         'Order submitted successfully!',
                //         style: TextStyle(color: Colors.black),
                //       ),
                //       duration: Duration(seconds: 3),
                //     ),
                //   );
                // }
              },
              builder: (orderContext, orderState) {
                return Builder(
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TabBarSection(state: state),
                          Expanded(
                            child: GridView.builder(
                              itemCount: orderState.orderHistoryList!.length, // Number of device cards
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                childAspectRatio: 3.0,
                              ),
                              itemBuilder: (context, index) {
                                final order = orderState.orderHistoryList![index];
                                return OrderHistoryCard(
                                  index: index,
                                  resourceType: order.resourceType!,
                                  // deviceType: order["deviceType"],
                                  orderStatusId: order.orderStatus!,
                                  orderStatusName: order.orderStatus!,
                                  orderDate: order.customerChosenTime!.toString(),
                                  // orderDate: order["orderDate"]
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
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
            SizedBox(
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

void _showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevents closing by tapping outside
    builder: (context) {
      double screenWidth = MediaQuery.of(context).size.width;
      final formKey = GlobalKey<FormState>();
      return BlocProvider(
        create: (context) => OrderHistoryBloc(),
        child: BlocConsumer<OrderHistoryBloc, OrderHistoryState>(
          listener: (mainContext, state) {
            if (state.isSubmitted) {
              Navigator.pop(context); // Close the dialog
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: Text('Order submitted successfully!'),
              //     duration: Duration(seconds: 3),
              //   ),
              // );
            }
          },
          builder: (mainContext, state) {
            return Dialog(
              insetPadding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  child: Form(
                    key: formKey,
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
                            value: state.placeOrderData!.id,
                            dropdownColor: AppColors.textFieldFillColor,
                            iconEnabledColor: AppColors.textFieldBorderColor,
                            onChanged: (newValue) {
                              mainContext.read<OrderHistoryBloc>().add(OrderHistoryEvent.onChangeResourceId(newValue!));
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

                        const SizedBox(height: 36),

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
                                      initialDateTime: state.placeOrderData!.customerChosenTime,
                                      mode: CupertinoDatePickerMode.dateAndTime,
                                      use24hFormat: false,
                                      onDateTimeChanged: (DateTime newDate) {
                                        mainContext
                                            .read<OrderHistoryBloc>()
                                            .add(OrderHistoryEvent.onChangeOrderDate(newDate));
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 60.0,
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.textFieldBorderColor),
                              borderRadius: BorderRadius.circular(5.5),
                              color: AppColors.textFieldFillColor,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.calendar_month_rounded,
                                  color: AppColors.textFieldFontColor,
                                ),
                                const SizedBox(width: 12),
                                CustomText(
                                  text:
                                      '${state.placeOrderData!.customerChosenTime?.day}/${state.placeOrderData!.customerChosenTime?.month}/${state.placeOrderData!.customerChosenTime?.year} ${state.placeOrderData!.customerChosenTime?.hour}:${state.placeOrderData!.customerChosenTime?.minute}',
                                  color: AppColors.textFieldFontColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
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
                        if (state.isSubmitted)
                          const Center(
                            child: CircularProgressIndicator(),
                          ),
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
