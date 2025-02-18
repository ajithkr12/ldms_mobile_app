import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

class Away extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final searchDebouncer = Debouncer(milliseconds: 500);
    int indexNumber = 0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final _formKey = GlobalKey<FormState>();
    String? _category;
    TimeOfDay? _reminderTime;
    String? _newCategory;
    final List<String> _categories = ['Personal', 'Work', 'Other'];
    return Scaffold(
        appBar: AppBar(
          title: Text('I am Away'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amber)),
              const SizedBox(height: 20),
              Expanded(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "From Date & Time",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
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
                                  validator: (value) => value == null
                                      ? 'Please select a category'
                                      : null,
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
                                  validator: (value) => value!.isEmpty
                                      ? 'Please enter a category'
                                      : null,
                                ),
                              ],
                              const SizedBox(height: 16),
                              const Text(
                                "To Date & Time",
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
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter a task title'
                                    : null,
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                "Description",
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
                                    initialTime:
                                        _reminderTime ?? TimeOfDay.now(),
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
                                validator: (value) => value!.isEmpty
                                    ? 'Please pick a reminder time'
                                    : null,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        SizedBox(
                          width: screenWidth,
                          child: CustomButton(
                            inputText: "SUBMIT",
                            backgroundColor: AppColors.customButtonColor,
                            fontColor: AppColors.customButtonFontColor,
                            // fontSize: 16,
                            fontWeight: FontWeight.w400,
                            onButtonPressed: () {},
                            borderRadius: 8,
                            // height: 52,
                          ),
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
            ],
          ),
        ));
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
