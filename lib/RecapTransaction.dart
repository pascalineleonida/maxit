import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'ChatPage.dart';
import 'Notification.dart';
import 'ProfilePage.dart';
import 'ServiceClient.dart';

class recap extends StatefulWidget {
  const recap({super.key});

  @override
  State<recap> createState() => _assistanceState();
}

class _assistanceState extends State<recap> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Recap de transaction',
                        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 15),
                      child: Row(
                        children: [
                          Text('Destinataire',style: TextStyle(fontWeight: FontWeight.w200)),
                        ],
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,
                            child: Column(
                            children: [
                              Icon(Icons.person,size: 30,color: Colors.white),
                            ],
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Destinataire',style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 15),
                      child: Row(
                        children: [
                         Icon(Icons.shopping_bag,size: 40,color: Colors.red,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Bonus max it',style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120,),
                      child: Text('500 Mo'),
                    ),
                    Divider(indent: 20,endIndent: 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Bonus Max it',style: TextStyle(fontWeight: FontWeight.w200)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 15),
                      child: Row(
                        children: [
                          Text('Methode de payement:',style: TextStyle(fontWeight: FontWeight.w200)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 5),
                      child: Row(
                        children: [
                          Image(image: AssetImage('images/avatar/tel.png'),height: 50,width: 50,),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text('Balance',style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180,),
                      child: Text('4.47 U'),
                    ),
                    Divider(indent: 20,endIndent: 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Resume de payement',style: TextStyle(fontWeight: FontWeight.w200)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18,top: 10),
                          child: Text('Montant'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('0 U'),
                        ),
                      ],
                    ),
                    Container(
                      height: 67,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18,top: 15),
                            child: Text('Montant'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10,top: 15),
                            child: Text('0 U'),
                          ),
                        ],
                      ),

                    ),

                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Confirmer',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
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
