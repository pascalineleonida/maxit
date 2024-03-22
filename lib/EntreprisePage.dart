import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'PublicPage.dart';
import 'ServiceClient.dart';
class entreprise extends StatefulWidget {
  const entreprise({super.key});

  @override
  State<entreprise> createState() => _serviceState();
}

class _serviceState extends State<entreprise> {
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
                  child: Text('Entreprise',
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
                Text('Le centre dappel est joignable 7j7 de 7h00 a 22h00\n'
                    'au 0707 pour lentreprise (Fixe,Mobile,et internet).lappel effectue par un fixe vous coutera 25 FCFA. lappel international est paye comme un appel normal. Depuis un poste fixe, composez le 2721230808'),
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
                      Text('Appel local'),
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
                      Text('Appel international'),
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
