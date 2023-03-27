import 'package:flutter/material.dart';

class HeaderTexts extends StatelessWidget {
  const HeaderTexts({Key? key, required this.txt}) : super(key: key);

  final String txt;
  @override
  Widget build(BuildContext context) {
    return   SliverToBoxAdapter(
      child:  Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10
        ),
        child:   Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children:  [

            Text(txt ,

              style: const TextStyle(

                  fontWeight: FontWeight.bold,

                  fontSize: 22

              ),

            ),

            const Text("View all",

              style: TextStyle (

                  color: Colors.blue

              ),

            ),





          ],

        ),
      ),
    );
  }
}
