import 'package:flutter/material.dart';
class block extends StatefulWidget {
  String nomDeArticle;
  block({super.key,required this.nomDeArticle,});

  @override
  State<block> createState() => _CircledState();
}

class _CircledState extends State<block> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(fit: BoxFit.cover,image: AssetImage(widget.nomDeArticle)),
                  borderRadius: BorderRadius.circular(22),
                ),

              ),
            ),
          ],
        ),

      ],
    );
  }
}
