import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'EntreprisePage.dart';
import 'OrangeMoney.dart';
import 'PublicPage.dart';
class service extends StatefulWidget {
  const service({super.key});

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
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
                  child: Text('Service Client',
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
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => public(),));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Icon(Icons.apartment),
                      ),
                      Text('Public'),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => entreprise(),));
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.maps_home_work_outlined),
                    ),
                    Text('Entreprise'),
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
              child: GestureDetector(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => orange(),));
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Icon(Icons.schedule_send_outlined),
                    ),
                    Text('Orange Money'),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
