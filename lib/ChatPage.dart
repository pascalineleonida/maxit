import 'package:flutter/material.dart';



class chat extends StatefulWidget {
   chat({super.key});

  @override
  State<chat> createState() => _messagerieState();
}

class _messagerieState extends State<chat> {

  List message=[
    {
      'nom':'bonjour comment tu vas?',
      'heure':'14.30',
      'icon':Icons.check
    },
  ];
  bool value= true;

  @override
  Widget build(BuildContext context) {

    final sms= TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat',style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: Column(
          children: message.map((e) => Padding(
            padding:  EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e['nom']),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(e['heure']),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: (){
                            setState(() {
                              message.remove(e);
                            });
                          },
                          child: Icon(e['icon'])),
                    )
                  ],
                ),
              ],
            ),
          ),).toList(),
        ),
      ),
      bottomSheet: Container(
        height: 80,
        alignment: Alignment.center,
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: sms,

            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                    Icons.link_sharp),
                hintText: 'message',suffixIcon: GestureDetector(onTap: (){
              setState(() {
                message.add(
                    {
                      'nom':sms.text,
                      'heure':DateTime.now().hour.toString()+'.'+DateTime.now().minute.toString(),
                      'icon':Icons.check
                    }
                );
              });
            },
                child: Icon(Icons.send))),
          ),
        ),
      ),
    );
  }
}
