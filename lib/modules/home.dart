import 'package:flutter/material.dart';
import 'package:modulos/kernel/colors/colors_app.dart';
import 'package:modulos/kernel/widgets/custom_list_user.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Map item1 = {'name': 'Angelinho do brasil'};
    final Map item2 = {'name': 'Javilin do brasuka'};
    final List items = [item1, item2];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: ColorsApp.primaryColor,
        ),
        backgroundColor: ColorsApp.whiteColor,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return CustomListUser(item: items[index]);
            },
          ),
        ));
  }
}
