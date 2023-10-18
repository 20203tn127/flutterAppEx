import 'package:flutter/material.dart';
import 'package:modulos/modules/account.dart';

class AccountNavigation extends StatelessWidget {
  const AccountNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/account',
      routes: {'/account': (context) => const Account()
      },
    );
  }
}
