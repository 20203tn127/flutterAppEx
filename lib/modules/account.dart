import 'package:flutter/material.dart';
import 'package:modulos/kernel/colors/colors_app.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('Perfil'),),
        backgroundColor: ColorsApp.whiteColor,
        body: const Center(child: Text('hola mundo account')));
  }
}
