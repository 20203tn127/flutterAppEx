import 'package:flutter/material.dart';
import 'package:modulos/kernel/colors/colors_app.dart';
import 'package:modulos/modules/forms/adapters/screens/first_form.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: ColorsApp.primaryColor,
        ),
        backgroundColor: ColorsApp.whiteColor,
        body: const FirstForm()
        );
  }
}
