import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/0-services/0-core/debouncer.dart';
import 'package:ldms_mobile_app/0-services/0-core/utility_services.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/constants/device_type.dart';
import 'package:ldms_mobile_app/constants/place_types.dart';
import 'package:ldms_mobile_app/custom_widgets/CustomText.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_subheading_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_with_icon.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/tab_menu_card.dart';
import 'package:ldms_mobile_app/screens/add_devices/bloc/add_devices_bloc.dart';
import 'package:ldms_mobile_app/screens/home/bloc/home_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddDevices extends StatelessWidget {
  void onPressed() {
    print('Icon pressed');
  }

  @override
  Widget build(BuildContext context) {
    const userProfilePicture = "";
    final searchController = TextEditingController();
    final searchDebouncer = Debouncer(milliseconds: 500);
    int indexNumber = 0;
    bool isKeyboardActive = MediaQuery.of(context).viewInsets.bottom > 0;

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
                  heading: "Create New Device",
                  iconUrl: "assets/icons/water.svg",
                ),
                SizedBox(width: 12.0),
              ],
            )),
            CustomIconButton(
                onButtonPressed: onPressed, iconPath: 'assets/icons/bell.svg')
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => AddDevicesBloc(),
        child: BlocBuilder<AddDevicesBloc, AddDevicesState>(
          builder: (mainContext, state) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text(
                  //   "hai",
                  //   style: TextStyle(color: Color(0xFF23AC34), fontSize: 24),
                  // ),

                  LayoutBuilder(builder: (context, constraints) {
                    return Container(
                      child: Column(
                        children: [
                          // TabBarSection(state: state),
                          SizedBox(height: 12),
                          SizedBox(
                            height: 60.0,
                            child: TextFormField(
                              initialValue: state.deviceData.serialNumber,
                              onChanged: (value) {
                                mainContext.read<AddDevicesBloc>().add(
                                    AddDevicesEvent.onChangeSerialNumber(
                                        value));
                              },
                              style: const TextStyle(
                                  color: AppColors.textFieldFontColor,
                                  fontSize: 16),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(5.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.5)),
                                labelText: "Enter Serial Number",
                                labelStyle: const TextStyle(
                                    color: AppColors.textFieldLabelColor,
                                    fontSize: 16),
                                filled: true,
                                fillColor: AppColors.textFieldFillColor,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          SizedBox(
                            height: 60.0,
                            child: TextFormField(
                              initialValue: state.deviceData.deviceName,
                              onChanged: (value) {
                                mainContext.read<AddDevicesBloc>().add(
                                    AddDevicesEvent.onChangeDeviceName(value));
                              },
                              style: const TextStyle(
                                  color: AppColors.textFieldFontColor,
                                  fontSize: 16),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(5.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.5)),
                                labelText: "Enter Device Name",
                                labelStyle: const TextStyle(
                                    color: AppColors.textFieldLabelColor,
                                    fontSize: 16),
                                filled: true,
                                fillColor: AppColors.textFieldFillColor,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          SizedBox(
                            height: 60.0,
                            child: DropdownButtonFormField(
                              style: const TextStyle(
                                  color: AppColors.textFieldFontColor,
                                  fontSize: 16),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(5.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.5)),
                                labelText: "Device Type",
                                labelStyle: const TextStyle(
                                    color: AppColors.textFieldLabelColor,
                                    fontSize: 16),
                                filled: true,
                                fillColor: AppColors.textFieldFillColor,
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                              ),
                              value: state.deviceData.deviceType,
                              dropdownColor: AppColors.textFieldFillColor,
                              iconEnabledColor: AppColors.textFieldBorderColor,
                              onChanged: (newValue) {
                                mainContext.read<AddDevicesBloc>().add(
                                    AddDevicesEvent.onChangeDeviceType(
                                        newValue!));
                              },
                              items: DeviceType.deviceTypeList
                                  .map<DropdownMenuItem<String>>((device) {
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
                                        style: const TextStyle(
                                            color:
                                                AppColors.textFieldFontColor),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),

                          SizedBox(
                            height: 12,
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
                                                  TextStyle(
                                                      fontSize: 24,
                                                      color: AppColors
                                                          .textFieldFontColor),
                                            ),
                                          ),
                                          child: CupertinoDatePicker(
                                            initialDateTime:
                                                state.deviceData.implementDate,
                                            mode: CupertinoDatePickerMode
                                                .dateAndTime,
                                            use24hFormat: false,
                                            showDayOfWeek: true,
                                            onDateTimeChanged:
                                                (DateTime newDate) {
                                              mainContext
                                                  .read<AddDevicesBloc>()
                                                  .add(AddDevicesEvent
                                                      .onChangeImplementDate(
                                                          newDate));
                                            },
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                height: 50.0,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 12.0),
                                decoration: BoxDecoration(
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
                                          '${state.deviceData.implementDate?.day}/${state.deviceData.implementDate?.month}/${state.deviceData.implementDate?.year} ${state.deviceData.implementDate?.hour}:${state.deviceData.implementDate?.minute}',
                                      color: AppColors.textFieldFontColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              )),

                          // DATE END/////////////////////////////////////////////
                        ],
                      ),
                    );
                  }),

                  Container(
                    margin: EdgeInsets.only(bottom: isKeyboardActive ? 0 : 62),
                    child: CustomButton(
                        inputText: "Submit",
                        backgroundColor: AppColors.customButtonColor,
                        fontColor: AppColors.customButtonFontColor,
                        onButtonPressed: () {
                          mainContext
                              .read<AddDevicesBloc>()
                              .add(AddDevicesEvent.submitDeviceDetails());
                        },
                        borderRadius: 12),
                  ),
                ],
              ),
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
            Container(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List.generate(
                    ExploreTabTypes.list.length,
                    (index) => TabMenuCard(
                      onClick: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(HomeEvent.selectTab(index));
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
