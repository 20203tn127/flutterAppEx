import 'package:flutter/material.dart';
import 'package:modulos/kernel/widgets/menu.dart';
import 'package:modulos/kernel/widgets/perfil.dart';
import 'package:modulos/kernel/widgets/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/menu': (context) => const Menu(),
        'profile': (context) => const Profile(),
      
      },
    );
  }
}
