import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'ServiceClient.dart';

class assistance extends StatefulWidget {
  const assistance({super.key});

  @override
  State<assistance> createState() => _assistanceState();
}

class _assistanceState extends State<assistance> {
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
                  child: Text('Assistance',
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
                ),
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
              child: GestureDetector(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => chat(),));
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.message),
                    ),
                    Text('Contacter un agent'),
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
              child: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => service(),));
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.call),
                    ),
                    Text('Service CLient'),
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
                    child: Icon(Icons.home),
                  ),
                  Text('Ou nous trouver?'),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Icon(Icons.navigate_next),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
