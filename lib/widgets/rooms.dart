import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:facebook_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key, required this.onlineUsers});

  final List<User> onlineUsers;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      height: 60,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: ((context, index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProfileAvator(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          })),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => print('create room button'),
      // child: ,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(width: 3.0, color: Colors.blueAccent[100]!)),
      color: Colors.white,
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (bounds) =>
                Palette.createRoomGradient.createShader(bounds),
            child: const Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          const Text('Create\nRoom')
        ],
      ),
    );
  }
}
