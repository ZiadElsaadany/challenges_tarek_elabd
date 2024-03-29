import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingCustomWidget extends StatelessWidget {
  const LoadingCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/loading.json'),
    );
  }
}
