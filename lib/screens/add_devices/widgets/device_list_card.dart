import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';

class DeviceListCard extends StatelessWidget {
  final String title;
  // final String status;
  // final int percentage;
  final String type;

  final Color bgColor; // New parameter for background color
  final Color color; // New parameter for background color
  final Color subHeadingColor;
  final Color headingColor;
  final Function onDelete;
  final Function onEdit;

  const DeviceListCard({
    super.key,
    required this.title,
    // required this.status,
    // required this.percentage,
    required this.type,
    required this.bgColor,
    required this.color,
    required this.headingColor,
    required this.subHeadingColor,
    required this.onDelete,
    required this.onEdit,
  });
  // void onPressed() {
  //   print('Icon pressed');
  // }

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
                    type == "WATER" ? "assets/icons/water.svg" : "assets/icons/gas.svg",
                    height: 22,
                    width: 22,
                    color: color, // Change to any color
                  ),
                  Text(type, style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w700)),
                ],
              ),
              // const SizedBox(height: 0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: headingColor, fontSize: 16)),
                  // Text("Status: $type", style: TextStyle(color: headingColor)),
                ],
              ),
              Row(
                children: [
                  CustomIconButton(
                    onButtonPressed: () => onDelete(),
                    iconPath: 'assets/icons/delete.svg',
                    iconColor: AppColors.deleteIconColor,
                    backgroundColor: AppColors.deleteIconColor.withOpacity(0.5),
                  ),
                  const SizedBox(width: 12),
                  CustomIconButton(
                    onButtonPressed: () => onEdit(),
                    iconPath: 'assets/icons/edit.svg',
                    iconColor: Colors.black,
                    backgroundColor: Colors.blue,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
