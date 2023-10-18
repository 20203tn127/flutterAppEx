import 'package:flutter/material.dart';
import 'package:modulos/kernel/colors/colors_app.dart';

class rowContainerExample extends StatelessWidget {
  const rowContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: ColorsApp.primaryColor,
        ),
        backgroundColor: ColorsApp.whiteColor,
        body: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            color: ColorsApp.dangerColor,
            margin: const EdgeInsets.all(16),
            child: const Row(
              children: [Text('Angelinho do brasil')],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: ColorsApp.secondaryColor,
            margin: const EdgeInsets.all(16),
            child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text('Angelinho do brasil')]),
          ),
        ]));
  }
}
