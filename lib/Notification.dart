import 'package:flutter/material.dart';

import 'AssistancePage.dart';
import 'ProfilePage.dart';
import 'TransactionPage.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text('Notification',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: GestureDetector(onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => transaction(),));
                   },
                       child: Text('Transaction en attente',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15))),
                 ),
               ],
             ),
              Container(
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Market Place',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('2h'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.airplanemode_active,color: Colors.red),
                          Icon(Icons.airplanemode_active,color: Colors.red),
                          Text('pour acceder a un univers diversifie\n et passionant regroupant boutique en\n ligne, streaming, jeux et bien plus,\n rend toi sur la market place sur max it.'),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Services Orange Money',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('02-03-2024'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.monetization_on,color: Colors.yellow.shade800),
                        Text('Affaire nkap , affaire tres serieuse.\n Clique sur le bouton "Orange Money"\n tape ton code secret et accede a tes \n services OM.'),
        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('1000U=5GO Aujourdhui!!!',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('01-03-2024'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wallet_giftcard,color: Colors.red.shade800),
                        Icon(Icons.wallet_giftcard,color: Colors.red.shade800),
                        Text('1000U=5GO,ca narrive que les vendredis.\n Viens prendre ton forfait Crazy Friday\n sur lappli max it.'),
        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.emoji_emotions,color: Colors.yellow.shade800),
                                    Text('Astuce Max it',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('04-02-2024'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.insert_emoticon_sharp,color: Colors.yellow.shade800),
                        Icon(Icons.insert_emoticon_sharp,color: Colors.yellow.shade800),
                        Text('tu es plutot internet,sms ou appels\n retrouve tes forfaits preferes dans \n "Mes Bons Plans" ou en cliquant\n  sur "Achat de forfait"'),
        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.wallet_giftcard,color: Colors.red.shade800),
                                    Icon(Icons.wallet_giftcard,color: Colors.red.shade800),
                                    Text('500U recharges = 500U\n offert',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text('06-02-24'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Achete ton credit de communication\n via Orange Money et recois le double.\n RDV dans longlet Orange Money'),
        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.emoji_emotions_outlined,color: Colors.yellow.shade800),
                                    Icon(Icons.emoji_emotions_outlined,color: Colors.yellow.shade800),
                                    Text('Avec OM, cest facile',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('27-02-2024'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Eau, courant, TV, enregistre\n ton compte et paie tes factures sur max it\n sans te deplacer. cest facile avec Orange Money\n rend toi sur la market place sur max it.'),
        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Bonus Max it 500MO gratuit',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('25-02-2024'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Ne passe pas a cote! Max it toffre 500Mo\n gratuit ce mois ! Rend-toi dans "Ma Line",\n Clique sur "Bonus Max it" et enjoy.'),
                        Icon(Icons.emoji_emotions_outlined,color: Colors.yellow.shade800),
                        Icon(Icons.emoji_emotions_outlined,color: Colors.yellow.shade800),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.waving_hand_sharp,color: Colors.brown.shade800),
                                    Icon(Icons.waving_hand_sharp,color: Colors.brown.shade800),
                                    Text('Bienvenu sur Max it',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text('24-02-2024'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Profite ici de lexperience simplifie pour acheter \n tes forfaits, acceder a Orange Money\n et faire des achats en ligne.'),
        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.black12),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('250U= 750MO Aujourdhui !!!',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text('23-02-2024'),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.emoji_emotions_outlined,color: Colors.yellow.shade800),
                        Icon(Icons.emoji_emotions_outlined,color: Colors.yellow.shade800),
                        Text('250U= 750MO, ca narrive que les vvendredis\n Viens prendre ton forfaits Crazy friday\n sur lappli Max it.'),
        
                      ],
                    ),
                  ],
                ),
              ),
           ],
        ),
      ),
    );
  }
}
