import 'package:flutter/material.dart';
import 'package:learning_app_10a/modules/news/adapters/screens/news.dart';

class NewsStack extends StatelessWidget{
  const NewsStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiquet roja de "DEBUG" de las vistas
      initialRoute: '/news',
      routes: {
        '/news':(context) => const News(),      },
    );
  }
  
}