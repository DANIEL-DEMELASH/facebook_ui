import 'package:facebook_responsive_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final List<Tab> _tabs = [
    Tab(
        icon: Icon(
      Icons.home,
      color: Colors.grey[600],
    )),
    Tab(
        icon: Icon(
      Icons.ondemand_video,
      color: Colors.grey[600],
    )),
    Tab(
        icon: Icon(
      MdiIcons.accountCircleOutline,
      color: Colors.grey[600],
    )),
    Tab(
        icon: Icon(
      MdiIcons.accountGroupOutline,
      color: Colors.grey[600],
    )),
    Tab(
        icon: Icon(
      MdiIcons.bellOutline,
      color: Colors.grey[600],
    )),
    Tab(
        icon: Icon(
      Icons.menu,
      color: Colors.grey[600],
    )),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screens.length,
      child: Scaffold(
          body: _screens[_selectedIndex],
          bottomNavigationBar: TabBar(
            tabs: _tabs,
            onTap: ((value) {
              setState(() {
                _selectedIndex = value;
              });
            }),
          )),
    );
  }
}
