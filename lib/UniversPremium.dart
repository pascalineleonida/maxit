import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'ProfilePage.dart';
class premium extends StatefulWidget {
  const premium({super.key});

  @override
  State<premium> createState() => _transactionState();
}

class _transactionState extends State<premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image(image: AssetImage('images/avatar/maxit.png'),height: 40,width: 40),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image(image: AssetImage('images/avatar/icon.jpeg')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Sorry',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30,left: 20),
            child: Column(
              children: [
                Text('Cher Client, lunivers premium vous offre'),
                Text('encore plus davantage, acceder-y en'),
                Text('augmentant simplement votre consommation'),
                Text('habituelle.A bientot dans votre univers premium'),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
