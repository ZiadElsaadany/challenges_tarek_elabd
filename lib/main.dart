import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/controller/bottom_provider.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/screens/home_screen.dart';

void  main( ) {
runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx)=>BottomProvider())
    ],
    child: const NewsChallenge()));
}

class NewsChallenge extends StatelessWidget {
  const NewsChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: HomeScreen(),
    );
  }
}
