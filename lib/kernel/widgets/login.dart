import 'package:flutter/material.dart';
import 'package:modulos/kernel/validations/validation.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isButtonDisabled = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController? _email = TextEditingController(text: '');
  final TextEditingController? _password = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicia sesión'),
      ),
      body: SafeArea(
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
                child: Image.asset('assets/images/utez.png'),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Correo electronico*', hintText: '@gmail.com'),
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
                      labelText: 'Contraseña*', hintText: 'Changeme'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'campo obligorio';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  controller: _password,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: _isButtonDisabled
                        ? null
                        : () {
                            Navigator.pushReplacementNamed(context, '/profile');
                          },
                    child: const Text('Registrar')),
              )
            ],
          ),
        ),
      )),
    );
  }
}
