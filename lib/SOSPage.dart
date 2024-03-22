import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'DataSOS.dart';
import 'ServiceClient.dart';
import 'VoixSOS.dart';

class sos extends StatefulWidget {
  const sos({super.key});

  @override
  State<sos> createState() => _assistanceState();
}

class _assistanceState extends State<sos> {
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
                  child: Text('Acheter SOS',
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: GestureDetector(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => chat(),));
              },
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => voixSOS(),));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Image(image: AssetImage('images/avatar/tel.png'),width: 50,height: 50,)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Text('voix SOS Credit',style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: GestureDetector(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => chat(),));
              },
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DataSOS(),));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Image(image: AssetImage('images/avatar/tel.png'),width: 50,height: 50,)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: Text('Data SOS Credit',style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
