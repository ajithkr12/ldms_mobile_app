import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/0-services/0-core/debouncer.dart';
import 'package:ldms_mobile_app/0-services/0-core/utility_services.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/constants/place_types.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_subheading_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/tab_menu_card.dart';
import 'package:ldms_mobile_app/screens/add_devices/add_devices.dart';
import 'package:ldms_mobile_app/screens/home/bloc/home_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeviceDetails extends StatelessWidget {
  final int index;

  DeviceDetails({required this.index});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> devices = [
      {'title': 'Device Name', 'value': 'Device 1'},
      {'title': 'Device Serial', 'value': 'DS23456HY1234UY3'},
      {'title': 'Location ', 'value': 'Kochi,Kerala'},
      {'title': 'Alarms', 'value': '0 Standard Vertical'},
      {'title': 'Product', 'value': 'Bioxide'},
      {'title': 'Tank History', 'value': '11/07/2020 - 12/12/2020'},
      {'title': 'Tank Type', 'value': '0 Standard Vertical'},
      {'title': 'Inventory Units', 'value': 'Volume (gal/L)'},
      {'title': 'Tank Height', 'value': '97 in'},
      {'title': 'Tank Capability', 'value': '2550 gal'},
      {'title': 'Product List', 'value': 'Bioxide'},
      {'title': 'Product Text', 'value': 'Bioxide'},
      {'title': 'Product SGU', 'value': '1.46'},
      {'title': 'Expansion Coefiicient', 'value': '9.0.2'},
    ];

    int indexNumber = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEDF1FB),
        title: Text('Tank Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
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
                  Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber)),
                  Expanded(
                    child: ListView.builder(
                      itemCount: devices.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color:
                                    Colors.black, // Change the color if needed
                                width: 0.5, // Set the width of the border
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  devices[index]
                                      ['title']!, // Access title from the map
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      height: 3)),
                              Text(
                                  devices[index]
                                      ['value']!, // Access value from the map
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff3629B7))),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 0),
                    child: CustomButton(
                      inputText: "DOWNLOAD REPORT",
                      backgroundColor: AppColors.customButtonColor,
                      fontColor: AppColors.customButtonFontColor,
                      onButtonPressed: () {},
                      borderRadius: 8,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
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
