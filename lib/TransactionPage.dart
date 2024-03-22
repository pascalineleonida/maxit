import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'ProfilePage.dart';
class transaction extends StatefulWidget {
  const transaction({super.key});

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage('images/avatar/maxit.png'),
          width: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => assistance(),));
            },
                child: Icon(Icons.question_mark)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => profile(),));
            },
                child: Icon(Icons.account_circle)),
          ),
        ],
      ),
      body: Column(
        children: [
          Image(image: AssetImage('images/avatar/icon-animation_1.gif')),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('Aucune Transaction na ete recue',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
          ),
          Text('Nous vous informerons lorsque nous aurons quelque'),
          Text('chose de nouveau pour vous'),
        ],
      ),
    );
  }
}
