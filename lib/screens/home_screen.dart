import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:facebook_responsive_ui/data/data.dart';
import 'package:facebook_responsive_ui/widgets/create_post_container.dart';
import 'package:facebook_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            floating: true,
            title: const Text(
              'facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  letterSpacing: -1.2,
                  fontWeight: FontWeight.bold),
            ),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            actions: [
              CircleButton(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () => print('search button')),
              CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  iconSize: 30.0,
                  onPressed: () => print('messenger button')),
            ],
          ),
          const SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          )
        ],
      ),
    );
  }
}
