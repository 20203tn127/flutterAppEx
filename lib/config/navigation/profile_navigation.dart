import 'package:flutter/material.dart';
import 'package:modulos/kernel/widgets/perfil.dart';

class ProfileNavigation extends StatelessWidget {
  const ProfileNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/perfil',
      routes: {'/perfil': (context) => const Profile()},
    );
  }
}
