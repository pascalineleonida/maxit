import 'package:flutter/material.dart';
import 'package:maxit/AchatCredit.dart';
import 'package:maxit/homepage.dart';
import 'AchatForfait.dart';
import 'AssistancePage.dart';
import 'HomeInfinity.dart';
import 'MyLifePage.dart';
import 'Notification.dart';
import 'ProfilePage.dart';
import 'RecapTransaction.dart';
import 'SOSPage.dart';
import 'TransfertArgent.dart';
import 'UniversPremium.dart';
import 'aide.dart';
import 'blockD.dart';
import 'composantcircl.dart';
import 'composantsecond.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

List data = [
  {
    'Icon': (Icons.account_circle),
    'nom': 'Solde principal',
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.remove_red_eye),
  },
  {
    'Icon': (Icons.account_circle),
    'nom': 'Solde principal',
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.star_border_purple500_rounded),
    'Icon': (Icons.remove_red_eye),
  },
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage('images/avatar/maxit.png'),
          width: 30,
        ),
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
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Bienvenu cher client',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  homepage(
                    nomDeArticle: 'solde principal',
                  ),
                  homepage(
                    nomDeArticle: 'solde principal',
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => achat(),));
                  },
                    child: Column(
                      children: [
                        Circled(nomDeArticle: 'images/avatar/forfait.png'),
                        Text('Achat\n forfait'),
                      ],
                    ),
                  ),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => credit(),));
                  },
                    child: Column(
                      children: [
                        Circled(
                          nomDeArticle: 'images/avatar/recharge.png',
                        ),
                        Text('Recharge \n credit'),
                      ],
                    ),
                  ),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => infinity(),));
                  },
                    child: Column(
                      children: [
                        Circled(
                          nomDeArticle: 'images/avatar/myway.jpeg',
                        ),
                        Text('home \n infinity'),
                      ],
                    ),
                  ),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => transfert(),));
                  },
                    child: Column(
                      children: [
                        Circled(
                          nomDeArticle: 'images/avatar/transfert.png',
                        ),
                        Text('transfert \n argent'),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Mes bon plans',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => recap(),));
                  },
                    child: Column(
                      children: [
                        second(nomDeArticle: 'images/avatar/max.jpeg'),
                        Text('Achat de forfait'),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Autres Services',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => infinity(),));
                    },
                      child: Column(
                        children: [
                          block(nomDeArticle: 'images/avatar/myway.jpeg'),
                          Text('home\n infinity'),
                        ],
                      ),
                    ),
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => premium(),));
                    },
                      child: Column(
                        children: [
                          block(
                            nomDeArticle: 'images/avatar/recharge.png',
                          ),
                          Text('univers \n premium'),
                        ],
                      ),
                    ),
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => life(),));
                    },
                      child: Column(
                        children: [
                          block(
                            nomDeArticle: 'images/avatar/myway.jpeg',
                          ),
                          Text('my \n life'),
                        ],
                      ),
                    ),
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sos(),));
                    },
                      child: Column(
                        children: [
                          block(
                            nomDeArticle: 'images/avatar/transfert.png',
                          ),
                          Text('SOS \n Credit'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        block(nomDeArticle: 'images/avatar/bonus.jpeg'),
                        Text('payement\n facture'),
                      ],
                    ),
                    Column(
                      children: [
                        block(
                          nomDeArticle: 'images/avatar/home.png',
                        ),
                        Text('univers \n pulse'),
                      ],
                    ),
                    Column(
                      children: [
                        block(
                          nomDeArticle: 'images/avatar/om.png',
                        ),
                        Text('suivi \n consommation'),
                      ],
                    ),
                    Column(
                      children: [
                        block(
                          nomDeArticle: 'images/avatar/suivi.png',
                        ),
                        Text('transfert \n argent'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Mes Achats via MarketPlace',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          block(nomDeArticle: 'images/avatar/suivi.png'),
                          Text('Mes Services\n Actifs'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          block(
                            nomDeArticle: 'images/avatar/home.png',
                          ),
                          Text('Mes Ticket'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('besoin Aide?',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        aide(nomDeArticle: 'images/avatar/transfert.png'),
                        Text('Contacter un \n Agent'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        aide(
                          nomDeArticle: 'images/avatar/home.png',
                        ),
                        Text('Mon Identification'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      aide(
                        nomDeArticle: 'images/avatar/pawa.png',
                      ),
                      Text('Localiser une \n legende'),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.grid_view),
            Icon(Icons.send_time_extension),
            Icon(Icons.person_pin_outlined),
            Icon(Icons.shopping_bag),
          ],
        ),
      ),
    );
  }
}
