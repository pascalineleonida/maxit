import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'Notification.dart';
import 'ProfilePage.dart';
class transfert extends StatefulWidget {
  const transfert({super.key});

  @override
  State<transfert> createState() => _achatState();
}

class _achatState extends State<transfert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => notification(),));
            },
                child: Icon(Icons.notification_add)),
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text('Transfert Argent',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
