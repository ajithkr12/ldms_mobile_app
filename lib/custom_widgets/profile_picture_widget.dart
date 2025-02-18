import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ldms_mobile_app/0-services/0-core/utility_services.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    super.key,
    required this.profilePictureUrl,
    this.name = "T",
    this.boxSize = 36,
  });

  final String? profilePictureUrl;
  final double? boxSize;
  final String name;

  @override
  Widget build(BuildContext context) {
    final double avatarSize = (72 / 100) * boxSize!;

    return SizedBox(
      width: boxSize,
      height: boxSize,
      child: profilePictureUrl == "" || profilePictureUrl == null
          ? CircleAvatar(
              radius: 100,
              backgroundColor: const Color(0xff6C7682),
              child: Icon(
                Icons.person,
                size: avatarSize,
                color: const Color(0xff181A20),
              ),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                // height: 100,
                // width: 100,
                imageUrl: profilePictureUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  alignment: Alignment.center,
                  color: const Color(0xff6C7682),
                  // height: 100,
                  // width: 100,
                  child: Text(
                    UtilityServices.getFirstXLetters(name, 1).toUpperCase(),
                    style: TextStyle(
                        color: const Color(0xff181A20),
                        fontSize: boxSize! / 2,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text(
                    UtilityServices.getFirstXLetters(name, 1).toUpperCase(),
                    style: TextStyle(
                      color: const Color(0xff181A20),
                      fontSize: boxSize! / 2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                // errorWidget: ,
              ),
            ),
    );
  }
}
