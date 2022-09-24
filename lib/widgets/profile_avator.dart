import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvator extends StatelessWidget {
  const ProfileAvator(
      {super.key, required this.imageUrl, this.isActive = false});
  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey,
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
        isActive
            ? Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palette.online,
                      border: Border.all(color: Colors.white, width: 2.0)),
                ))
            : const SizedBox.shrink()
      ],
    );
  }
}
