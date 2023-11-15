import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';
import 'package:learning_app_10a/kernel/widgets/custom/custom_carousel.dart';

class News extends StatelessWidget{
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColor,
        title: const Text('Noticas'),
      ),
      body: const Center(
        //ME FALTA
        child: CustomCarousel(carouselHeight: 300, itemList: [FirstSection(), SecondSeccion(), ThirdSeccion()], ),
      ),
    );
  }

}

class FirstSection extends StatelessWidget{
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/utez-logo.png', 
          width: widthImage, 
          height: 120,
          fit: BoxFit.fitWidth,),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(alignment: Alignment.topLeft, 
            child: Text('Regresa el aire acondicionado', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(alignment: Alignment.topLeft, 
            child: Text('Regresa el aire acondicionado en CA -UTEZ' ,),
            ),
          )
        ],
      ),
    );
  }

}

class SecondSeccion extends StatelessWidget{
  const SecondSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
   return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Column(
      children: <Widget>[
        Image.asset('assets/images/noticias.jpg', 
          width: widthImage, 
          height: 120,
          fit: BoxFit.fitWidth),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(alignment: Alignment.topLeft, 
            child: Text('Regresa el aire acondicionado', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(alignment: Alignment.topLeft, 
            child: Text('Regresa el aire acondicionado en CA -UTEZ' ,),
            ),
          )
      ],
    ),
   );
  }

}


class ThirdSeccion extends StatelessWidget{
  const ThirdSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
   return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Column(
      children: <Widget>[
        Image.asset('assets/images/noticias2.JPG', 
          width: widthImage, 
          height: 120,
          fit: BoxFit.fitWidth),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(alignment: Alignment.topLeft, 
            child: Text('Regresa el aire acondicionado', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(alignment: Alignment.topLeft, 
            child: Text('Regresa el aire acondicionado en CA -UTEZ' ,),
            ),
          )
      ],
    ),
   );
  }

}