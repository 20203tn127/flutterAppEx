import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';
import 'package:learning_app_10a/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget{
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
      final Map<String,dynamic> item = {
      'title': 'Jordan 1',
      'description': 'son ogs',
      'initialRating': 4.5,
      'imageURL':'assets/images/utez-logo.png'
      };

      final Map<String,dynamic> item2 = {
      'title': 'Iphone XD',
      'description': 'ES SUPER OG',
      'initialRating': 3.0,
      'imageURL':'assets/images/noticias.jpg'
      };
      final List items = [item,item2];
    return  Scaffold(
      appBar: AppBar(title: const Text('Tienda de halcón'),
      backgroundColor: ColorsApp.primaryColor,
      foregroundColor: Colors.white,),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 2,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: List.generate(items.length, (index) {
          return ContainerShop(
              title: items[index]['title'], 
              description: items[index]['description'],
              initialRating: items[index]['initialRating'],
              imageURL: items[index]['imageURL']);
        }),
      ),
    );
  }
  
}