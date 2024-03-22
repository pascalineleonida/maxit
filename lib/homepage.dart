import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  String nomDeArticle;
   homepage({super.key,required this.nomDeArticle,});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 150,
         decoration: BoxDecoration(
           color: Colors.black,
             borderRadius: BorderRadius.circular(22),
         ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.account_circle,color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(widget.nomDeArticle,style: TextStyle(color: Colors.white),),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_border_purple500_rounded,color: Colors.white),
                            Icon(Icons.star_border_purple500_rounded,color: Colors.white),
                            Icon(Icons.star_border_purple500_rounded,color: Colors.white),
                            Icon(Icons.star_border_purple500_rounded,color: Colors.white),
                            Icon(Icons.star_border_purple500_rounded,color: Colors.white),
                            Icon(Icons.remove_red_eye,color: Colors.orange),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        );
  }
}
