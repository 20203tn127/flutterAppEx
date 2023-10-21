import 'package:flutter/material.dart';
import 'package:modulos/kernel/validations/validation.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  bool _isButtonDisabled = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController? _fullName = TextEditingController(text: '');
  final TextEditingController? _age = TextEditingController(text: '');
  final TextEditingController? _email = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('First form')),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              onChanged: () {
                setState(() {
                  _isButtonDisabled = !_formKey.currentState!.validate();
                });
              },
              key: _formKey,
              child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Container>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Nombre completo*',
                              hintText: 'Angelin Cambiar'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'campo obligorio';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.name,
                          controller: _fullName,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Correo electronico*',
                              hintText: '@gmail.com'),
                          validator: (value) {
                            RegExp regex = RegExp(AppPaterns.email);
                            if (value == null || value.isEmpty) {
                              return 'campo obligatorio';
                            } else if (!regex.hasMatch(value)) {
                              return 'Introduce un correo válido';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _email,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Edad*', hintText: '21'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'campo obligorio';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          controller: _age,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: ElevatedButton(
                            onPressed: _isButtonDisabled
                                ? null
                                : () {
                                    print('$_age $_fullName');
                                  },
                            child: const Text('Registrar')),
                      )
                    ],
                  )),
            ),
          ),
        )
        );
  }
}
