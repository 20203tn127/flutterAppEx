import 'package:flutter/material.dart';
import 'package:modulos/modules/home.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {'/home': (context) => const Home()},
    );
  }
}
