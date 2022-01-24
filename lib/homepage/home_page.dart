import 'package:flutter/material.dart';
import 'package:gomes_restaurante/screens/Screen_search.dart';
import 'package:gomes_restaurante/screens/screen_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Gomes Delivery',
          style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold,color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu,color: Colors.black),
        ),
        actions: [
          IconButton(
          onPressed: (){},
      icon: Icon(Icons.shopping_cart_outlined,
          color: Colors.black),),
        ],
      ),
       body: Column(
         children: [
           ScreenSearch(),
           SizedBox(
             height: 20,
           ),
           ScreenGrid(),
         ],
       )
    );
  }
}
