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

class EditExistingDevice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final searchDebouncer = Debouncer(milliseconds: 500);
    int indexNumber = 0;

    final List<Map<String, dynamic>> devices = [
      {
        "title": "Device 1",
        "status": "Healthy",
        "percentage": 78,
        "typeId": "0",
        "type": "Water"
      },
      {
        "title": "Device 2",
        "status": "Warning",
        "percentage": 50,
        "typeId": "0",
        "type": "Water"
      },
      {
        "title": "Device 3",
        "status": "Critical",
        "percentage": 15,
        "typeId": "1",
        "type": "LPG"
      },
      {
        "title": "Device 4",
        "status": "Warning",
        "percentage": 50,
        "typeId": "0",
        "type": "Water"
      },
      {
        "title": "Device 5",
        "status": "Healthy",
        "percentage": 78,
        "typeId": "1",
        "type": "LPG"
      },
      {
        "title": "Device 6",
        "status": "Warning",
        "percentage": 50,
        "typeId": "0",
        "type": "Water"
      },
      {
        "title": "Device 7",
        "status": "Critical",
        "percentage": 15,
        "typeId": "1",
        "type": "LPG"
      },
      {
        "title": "Device 8",
        "status": "Warning",
        "percentage": 50,
        "typeId": "1",
        "type": "LPG"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Existing Device'),
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
                    height: 40,
                    width: MediaQuery.of(context).size.width * 1.00,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      controller: searchController,
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      obscureText: false,
                      decoration: InputDecoration(
                        // Align the content to the center
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal:
                                12), // Adjust this padding for center alignment
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xffFFFFFF),
                        hintText: "Search here",
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(212, 150, 149, 149)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.black),
                        suffixIcon: searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                onPressed: () {
                                  searchController.clear();
                                },
                              )
                            : null,
                        isDense: true,
                        alignLabelWithHint: true,
                      ),
                      onChanged: (value) {
                        searchDebouncer.run(
                          () {},
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  TabBarSection(state: state),
                  Expanded(
                    child: GridView.builder(
                      itemCount: devices.length, // Number of device cards
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.2,
                      ),
                      itemBuilder: (context, index) {
                        final device = devices[index];
                        // Assign color based on index pattern
                        Color bgColor;
                        Color color;
                        Color headingColor;
                        Color subHeadingColor;
                        if (index % 8 == 0 ||
                            index % 8 == 3 ||
                            index % 8 == 4 ||
                            index % 8 == 7) {
                          bgColor =
                              cardColors[indexNumber]; // Random for 0, 3, 4,7
                          color = Colors.white;
                          headingColor = Colors.white;
                          subHeadingColor = Colors.white;
                          indexNumber = indexNumber + 1;
                        } else {
                          bgColor = Colors.white; // White for 1, 2, 5,6
                          color = cardColors[(indexNumber - 1)];
                          headingColor = Colors.black;
                          subHeadingColor = Colors.grey;
                        }

                        return DeviceCard(
                          title: device["title"],
                          status: device["status"],
                          percentage: device["percentage"],
                          typeId: device["typeId"],

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
            );
          },
        ),
      ),
    );
  }
}

class DeviceCard extends StatelessWidget {
  final String title;
  final String status;
  final int percentage;
  final String typeId;

  final Color bgColor; // New parameter for background color
  final Color color; // New parameter for background color
  final Color subHeadingColor;
  final Color headingColor;

  DeviceCard(
      {required this.title,
      required this.status,
      required this.percentage,
      required this.typeId,
      required this.bgColor,
      required this.color,
      required this.headingColor,
      required this.subHeadingColor});
  void onPressed() {
    print('Icon pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [bgColor, bgColor.withOpacity(0.8)],
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
                  SvgPicture.asset(
                    typeId == "0"
                        ? "assets/icons/water.svg"
                        : "assets/icons/gas.svg",
                    height: 22,
                    width: 22,
                    color: color, // Change to any color
                  ),
                  Text("S", style: TextStyle(color: Colors.orange)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: headingColor)),
                  Text("Status: $status",
                      style: TextStyle(color: headingColor)),
                ],
              ),
              Row(
                children: [
                  CustomIconButton(
                    onButtonPressed: () => _showCustomDialog(context),
                    iconPath: 'assets/icons/delete.svg',
                    iconColor: AppColors.deleteIconColor,
                    backgroundColor: AppColors.deleteIconColor.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomIconButton(
                      onButtonPressed: onPressed,
                      iconPath: 'assets/icons/edit.svg',
                      iconColor: AppColors.editIconColor,
                      backgroundColor: AppColors.editIconColor.withOpacity(0.5))
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

      return Dialog(
        insetPadding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8),
                Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/delete.svg",
                      height: 64,
                      width: 64,
                      color: AppColors.deleteIconColor, // Change to any color
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "Are You Sure You Want To",
                      style: TextStyle(fontSize: 20),
                      textAlign:
                          TextAlign.center, // Centers the text horizontally
                    ),
                    Text(
                      "delete This Device",
                      style: TextStyle(fontSize: 20),
                      textAlign:
                          TextAlign.center, // Centers the text horizontally
                    ),
                  ],
                ),
                const SizedBox(height: 42),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: screenWidth / 2.5,
                      child: CustomButton(
                        inputText: "CANCEL",
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        fontColor: AppColors.customButtonColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        onButtonPressed: () {
                          Navigator.pop(
                              context); // Navigate back to the previous screen
                        },
                        borderRadius: 8,
                        borderColor: AppColors.customButtonColor,
                        height: 42,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 2.5,
                      child: CustomButton(
                        inputText: "DELETE",
                        backgroundColor: AppColors.deleteIconColor,
                        fontColor: AppColors.customButtonFontColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        onButtonPressed: () {},
                        borderRadius: 8,
                        height: 42,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
