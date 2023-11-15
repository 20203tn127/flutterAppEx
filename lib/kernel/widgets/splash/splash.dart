
import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  final String title;
  const Splash({super.key, required this.title});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){ 
    super.initState();
    Future.delayed(const Duration(seconds: 4), ()=> Navigator.pushReplacementNamed(context, '/menu'));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
          //MainAxisAlignment: MainAxisAlignment.center;
          Image.asset('assets/images/utez-logo.png', 
          width: 200, 
          height: 150,
          ),
          Text('${widget.title}')
        ]
        ),
        ),
    );
  }
}

