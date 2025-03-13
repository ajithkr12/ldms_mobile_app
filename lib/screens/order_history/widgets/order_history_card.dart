import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';

class OrderHistoryCard extends StatelessWidget {
  final int index;
  final String resourceType;
  final String orderStatusId;
  final String orderStatusName;
  final String orderDate;

  const OrderHistoryCard({
    super.key,
    required this.index,
    required this.resourceType,
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
    // print(orderStatusId);
    switch (orderStatusId) {
      case "ORDERED":
        statusColor = AppColors.PendingColor;
        statusIcon = "assets/icons/clock.svg";
        break;
      case "ORDER_CONFIRMED":
        statusColor = AppColors.orderConfirmColor;
        statusIcon = "assets/icons/tick.svg";

        break;
      case "CANCELLED":
        statusColor = AppColors.canceledColor;
        statusIcon = "assets/icons/close.svg";

        break;
      case "OUT_OF_DELIVERY":
        statusColor = AppColors.outOfDeliveryColor;
        statusIcon = "assets/icons/tick.svg";
        break;
      case "DELIVERED":
        statusColor = AppColors.outOfDeliveryColor;
        statusIcon = "assets/icons/tick.svg";
        break;
      default:
        statusColor = Colors.grey;
        statusIcon = "assets/icons/clock.svg";
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CustomIconButton(
                        onButtonPressed: onPressed,
                        iconPath: statusIcon,
                        backgroundColor: statusColor,
                        iconColor: statusColor,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(resourceType, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                          Text(resourceType, style: const TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orderDate, style: const TextStyle(color: Colors.black)),
                      // Text(orderDate, style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey, // Line color
                thickness: 0.5, // Line thickness
                indent: 0, // Left spacing
                endIndent: 0, // Right spacing
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 18),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.1), // Background color
                      borderRadius: BorderRadius.circular(18), // Rounded corners
                    ),
                    child: Text(
                      orderStatusName,
                      style: TextStyle(color: statusColor, fontSize: 12, fontWeight: FontWeight.w400),
                    ),
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
