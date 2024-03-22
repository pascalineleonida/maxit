import 'package:flutter/material.dart';
class forfait extends StatefulWidget {
  String nomDeArticle;
  forfait({super.key,required this.nomDeArticle,});

  @override
  State<forfait> createState() => _CircledState();
}

class _CircledState extends State<forfait> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
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
