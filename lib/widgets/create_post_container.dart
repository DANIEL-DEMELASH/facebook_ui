import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({super.key, required this.currentUser});

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 7.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvator(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                  child: Container(
                clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    border: Border.all(color: Palette.facebookGrey)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'What\'s on your mind?',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ))
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCustomButton(
                  icon: Icons.videocam,
                  color: Colors.red,
                  onPressed: () => print('live'),
                  label: 'Live',
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                MyCustomButton(
                  icon: Icons.photo_library,
                  color: Colors.green,
                  onPressed: () => print('Photo'),
                  label: 'Photo',
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                MyCustomButton(
                  icon: Icons.video_call,
                  color: Colors.purpleAccent,
                  onPressed: () => print('Room'),
                  label: 'Room',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
