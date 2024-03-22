import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'Notification.dart';
import 'ProfilePage.dart';
class voixSOS extends StatefulWidget {
  const voixSOS({super.key});

  @override
  State<voixSOS> createState() => _achatState();
}

class _achatState extends State<voixSOS> {
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
                Text('Acheter SOS',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Liste de voix SOS',style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image(image: AssetImage('images/avatar/recharge.png'),height: 50,width: 50,),
                              ),
                            ],
                          ),
                          Divider(endIndent: 30,indent: 20),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('100fcfa',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
