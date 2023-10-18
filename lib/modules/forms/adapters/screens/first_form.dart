import 'package:flutter/material.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  int? _age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('First form')),
        body: Form(
          key: _formKey,
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Container>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Nombre*', hintText: 'Angelin Cambiar'),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return 'campo obligorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                      onSaved: (newValue) {
                        _name = newValue;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Edad*', hintText: '21'),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return 'campo obligorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                      onSaved: (newValue) {
                        _name = newValue;
                      },
                    ),
                  ),
                ],
              )),
        ));
  }
}
