import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';

class TabMenuCard extends StatelessWidget {
  const TabMenuCard({
    super.key,
    required this.onClick,
    required this.label,
    required this.icon,
    required this.iconUrl,
    required this.isActive,
  });

  final VoidCallback onClick;
  final String label;
  final IconData? icon;
  final String iconUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () => onClick(),
        child: Container(
          constraints: const BoxConstraints(minWidth: 94.0),
          decoration: BoxDecoration(
            color: isActive
                ? AppColors.tabButtonActiveColor.withOpacity(0.8)
                : AppColors.tabButtonNormalColor,
            borderRadius: BorderRadius.circular(21.0),
            border: Border.all(
                color: isActive
                    ? AppColors.tabButtonActiveColor
                    : AppColorsNew.mediumGray,
                width: 1.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (iconUrl.isNotEmpty)
                  SvgPicture.asset(
                    iconUrl,
                    height: 16,
                    width: 16,
                    color: isActive
                        ? AppColors.tabButtonActiveFontColor
                        : AppColors.tabButtonNormalFontColor,
                  ),
                if (iconUrl.isNotEmpty) const SizedBox(width: 6.0),
                Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: isActive
                          ? AppColors.tabButtonActiveFontColor
                          : AppColors.tabButtonNormalFontColor,
                      fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
