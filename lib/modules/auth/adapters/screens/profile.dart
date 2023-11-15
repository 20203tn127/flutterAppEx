import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';
import 'package:learning_app_10a/modules/auth/adapters/screens/widgets/list_user.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final Map item={"name":"Thayli Villegas"};
    final Map item2={"name":"Thayli Villegas"};
    final List items=[item,item2];
    return Scaffold(
      appBar: AppBar( title: const Text('Usuarios'),backgroundColor: ColorsApp.primaryColor,foregroundColor: Colors.white,),
      body: Padding(
        padding:const  EdgeInsets.all(16.0),
        child: ListView.builder(itemCount:items.length, itemBuilder:(context,index){
          return ListUser(item: items[index],);

        }),
      )
      
    );
  }

}
