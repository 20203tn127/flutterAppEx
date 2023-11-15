import 'package:flutter/material.dart';
import 'package:learning_app_10a/modules/home/adapters/screens/about.dart';
import 'package:learning_app_10a/modules/home/adapters/screens/home.dart';

class HomeStack extends StatelessWidget{
  const HomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiquet roja de "DEBUG" de las vistas
      initialRoute: '/home',
      routes: {
        '/home':(context) => const Home(),
        '/home/about':(context) => const About()
      },
    );
  }
  
}