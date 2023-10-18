import 'package:flutter/material.dart';
import 'package:modulos/config/navigation/account_navigation.dart';
import 'package:modulos/kernel/widgets/custom_bottom_navigation_tab.dart';
import 'package:modulos/config/navigation/home_navigation.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

int _selectIndex = 0;
final homeNavigatorKey = GlobalKey<NavigatorState>();
final accountNavigatorKey = GlobalKey<NavigatorState>();

class _MenuState extends State<Menu> {
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(Object context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectIndex,
          children: const [HomeNavigation(), AccountNavigation()],
        ),
        bottomNavigationBar: CustomBottomNavigationTab(
            selectedIndex: _selectIndex, onItemTapped: _onItemTapped));
  }
}
