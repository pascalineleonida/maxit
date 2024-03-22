import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'PublicPage.dart';
import 'ServiceClient.dart';
class orange extends StatefulWidget {
  const orange({super.key});

  @override
  State<orange> createState() => _serviceState();
}

class _serviceState extends State<orange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Orange Money',
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
                ),
              ],
            ),
          ),
          Container(
            width: 350,
            height: 160,
            color: Colors.grey.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('Vous pouvez nous contacter en cas de probleme ou pour partager des idees damelioration.\n nhesitez pas a nous contacter par e-mail ou par telephone'),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Contact information' ,style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 350,
              child: GestureDetector(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => chat(),));
              },
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => public(),));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.call),
                      ),
                      Text('Appeler un agent Orange'),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 0,
            endIndent: 20,
            indent: 20,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 350,
              child: GestureDetector(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => chat(),));
              },
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => public(),));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.call),
                      ),
                      Text('Appeler un agent non Orange'),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 0,
            endIndent: 20,
            indent: 20,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 350,
              child: GestureDetector(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => chat(),));
              },
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => public(),));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.email),
                      ),
                      Text('Envoyer un email'),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 0,
            endIndent: 20,
            indent: 20,
            color: Colors.black,
          ),

        ],
      ),
    );
  }
}
