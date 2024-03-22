import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'ProfilePage.dart';
class life extends StatefulWidget {
  const life({super.key});

  @override
  State<life> createState() => _transactionState();
}
class _transactionState extends State<life> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 500,
        width: 400,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(image: AssetImage('images/avatar/maxit.png'),width: 40,height: 40,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Icon(Icons.shopping_basket,color: Colors.white,size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(Icons.menu,color: Colors.white,size: 30),
                    ),
                  ],
                ),


              ],
            ),
            Row(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Rechercher un produit, une offre',border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Icon(Icons.search,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
