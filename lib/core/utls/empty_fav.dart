import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FavEmpty extends StatelessWidget {
  const FavEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/lf30_e3pteeho.json',
      height: 300

      ),
    );
  }
}
