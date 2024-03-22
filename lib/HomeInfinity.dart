import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'Date.dart';
import 'ServiceClient.dart';

class infinity extends StatefulWidget {
  const infinity({super.key});

  @override
  State<infinity> createState() => _assistanceState();
}

class _assistanceState extends State<infinity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 80,
              color: Colors.deepOrange.shade400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/avatar/bg.png'),
                              height: 50,
                            ),
                            Text('Home \n Infinity',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('images/avatar/bg.png'),
                              height: 50,
                            ),
                            Text('Home \n Infinity',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 80,
              color: Colors.grey.shade100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppDate.dateTimeWithDay(DateTime.now()),
                      style: TextStyle(wordSpacing: 10, fontSize: 15)),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/avatar/bgi.jpeg'),fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepOrange),
                          borderRadius: BorderRadius.all(Radius.circular(05))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Menu Principal',style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade400,
                          border: Border.all(color: Colors.deepOrange),
                          borderRadius: BorderRadius.all(Radius.circular(05))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('1.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                Text('Test de couverture',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              ],
                            ),
              
                            Icon(Icons.navigate_next,color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade400,
                          border: Border.all(color: Colors.deepOrange),
                          borderRadius: BorderRadius.all(Radius.circular(05))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('2.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                Text('Achat de forfaits',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              ],
                            ),
              
                            Icon(Icons.navigate_next,color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade400,
                          border: Border.all(color: Colors.deepOrange),
                          borderRadius: BorderRadius.all(Radius.circular(05))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('3.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                Text('Gerer ma box internet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              ],
                            ),
              
                            Icon(Icons.navigate_next,color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Image(image: AssetImage('images/avatar/ca.png'),),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
