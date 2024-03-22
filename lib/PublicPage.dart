import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'ServiceClient.dart';
class public extends StatefulWidget {
  const public({super.key});

  @override
  State<public> createState() => _serviceState();
}

class _serviceState extends State<public> {
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
                  child: Text('Public',
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
                        child: Icon(Icons.wifi_calling),
                      ),
                      Text('Contacter notre service client'),
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
                      Text('Max it Application-Contact'),
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
                        child: Icon(Icons.facebook),
                      ),
                      Text('Contactez-nous sur Facebook'),
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
                        child: Icon(Icons.biotech_rounded),
                      ),
                      Text('Contacter-nous sur Twitter'),
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
