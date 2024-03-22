import 'package:flutter/material.dart';
class second extends StatefulWidget {
  String nomDeArticle;
  second({super.key,required this.nomDeArticle,});

  @override
  State<second> createState() => _CircledState();
}

class _CircledState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 220,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
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
