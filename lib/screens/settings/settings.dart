import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/0-services/0-core/debouncer.dart';
import 'package:ldms_mobile_app/0-services/0-core/utility_services.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/constants/place_types.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_subheading_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_with_icon.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/tab_menu_card.dart';
import 'package:ldms_mobile_app/screens/away/away.dart';
import 'package:ldms_mobile_app/screens/edit_existing%20device/edit_existing%20device.dart';
import 'package:ldms_mobile_app/screens/home/bloc/home_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    const userProfilePicture = "";
    final searchController = TextEditingController();
    final searchDebouncer = Debouncer(milliseconds: 500);
    int indexNumber = 0;
    double screenWidth = MediaQuery.of(context).size.width;

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
                  heading: "Settings",
                  iconUrl: "assets/icons/settings.svg",
                ),
                SizedBox(width: 12.0),
              ],
            )),
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => HomeBloc(),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      ProfilePictureWidget(
                          profilePictureUrl: userProfilePicture),
                      SizedBox(width: 12.0),
                      HeadingSubheadingWidget(
                          heading: "Hello, Jakob Bergson",
                          subHeading: 'Administrator'),
                    ],
                  ),
                ),
                // Text(
                //   "hai",
                //   style: TextStyle(color: Color(0xFF23AC34), fontSize: 24),
                // ),
                // SizedBox(height: 20),
                Expanded(
                    child: Container(
                  width: screenWidth,
                  padding: const EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.8), // background color of the square
                    borderRadius: BorderRadius.circular(18.0), // border radius
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Basic Settings",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/profile.svg',
                                  height: 24,
                                  width: 24,
                                  color: Colors.black, // Change to any color
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text("Edit username  & password",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/right-arrow.svg',
                            height: 36,
                            width: 36,
                            color: Colors.grey, // Change to any color
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditExistingDevice()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 6),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/devices.svg',
                                    height: 24,
                                    width: 24,
                                    color: Colors.black, // Change to any color
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text("Edit existing device",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/right-arrow.svg',
                              height: 36,
                              width: 36,
                              color: Colors.grey, // Change to any color
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Away()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 6),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/away.svg',
                                    height: 24,
                                    width: 24,
                                    color: Colors.black, // Change to any color
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text("I am away",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/right-arrow.svg',
                              height: 36,
                              width: 36,
                              color: Colors.grey, // Change to any color
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
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

class OrderHistoryCard extends StatelessWidget {
  final String title;
  final String status;
  final int percentage;
  final Color statusColor; // New parameter for background color

  OrderHistoryCard({
    required this.title,
    required this.status,
    required this.percentage,
    required this.statusColor,
  });
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
                  Text("Order 1", style: TextStyle(color: Colors.black)),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 18),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.1), // Background color
                        borderRadius:
                            BorderRadius.circular(18), // Rounded corners
                        // border: Border.all(
                        //   color: statusColor,
                        //   width: 1, // Border width
                        // ),
                      ),
                      child: Text("Pending",
                          style: TextStyle(
                              color: statusColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400))),
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
                          iconPath: 'assets/icons/bell.svg',
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
                            Text(title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Text("Status: $status",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(color: Colors.black)),
                      Text("Statusrr: $status",
                          style: TextStyle(color: Colors.black)),
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

      return Dialog(
        insetPadding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[400]!),
                    ),
                    child: DropdownButtonFormField<String>(
                      value: _category,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      isExpanded: true,
                      items: _categories.map((String category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                      onChanged: (value) {},
                      validator: (value) =>
                          value == null ? 'Please select a category' : null,
                    ),
                  ),
                  if (_category == 'Other') ...[
                    const SizedBox(height: 16),
                    const Text(
                      "Add Category",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      onChanged: (value) {
                        _newCategory = value;
                      },
                      validator: (value) =>
                          value!.isEmpty ? 'Please enter a category' : null,
                    ),
                  ],
                  const SizedBox(height: 16),
                  const Text(
                    "Task",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    onChanged: (value) {},
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter a task title' : null,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Reminder Timing",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    onTap: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: _reminderTime ?? TimeOfDay.now(),
                      );

                      // if (pickedTime != null && pickedTime != _reminderTime) {
                      //   setState(() {
                      //     _reminderTime = pickedTime;
                      //   });
                      // }
                    },
                    controller: TextEditingController(
                      text: _reminderTime == null
                          ? ''
                          : _reminderTime!.format(context),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Please pick a reminder time' : null,
                  ),
                  const SizedBox(height: 20),
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
                          inputText: "SUBMIT",
                          backgroundColor: AppColors.customButtonColor,
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