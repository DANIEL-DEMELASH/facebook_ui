import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar(
      {super.key,
      required this.icons,
      required this.selectedIndex,
      this.onTap});

  final List<IconData> icons;
  final int selectedIndex;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(
          border:
              Border(top: BorderSide(color: Palette.facebookBlue, width: 3.0))),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  e,
                  color: i == selectedIndex
                      ? Palette.facebookBlue
                      : Colors.black45,
                ),
              )))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
