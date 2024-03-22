import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'ChatPage.dart';
import 'Notification.dart';
import 'ServiceClient.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _assistanceState();
}

class _assistanceState extends State<profile> {
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
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text('Mon Profil',
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
                ],
              ),
            ),
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.grey,
              child: Column(
                children: [
                  Icon(Icons.person,size: 80,color: Colors.white),
                ],
              ),
            ),
            Text('697185728',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Action Principales'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Icon(Icons.heart_broken),
                      ),
                      Text('Mes favoris'),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Icon(Icons.shopping_bag),
                      ),
                      Text('Mes achats'),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.list_alt_outlined),
                    ),
                      Text('Mes informations'),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.send),
                    ),
                    Text('Mon compte Orange Money'),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Autres actions'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.settings),
                    ),
                    Text('Parametres'),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.ac_unit),
                    ),
                    Text('Noter lapplication'),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => assistance(),));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Icon(Icons.question_mark),
                      ),
                      Text('Assistance'),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.account_tree),
                    ),
                    Text('Partager lapplication'),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Deconnexion'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
