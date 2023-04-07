import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/controller/bottom_provider.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/controller/fav_provider.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/screens/home/home_screen.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/screens/new_details/new_details_screen.dart';

void  main( ) {
runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx)=>BottomProvider()),
      ChangeNotifierProvider(create: (ctx)=>FavProvider()),
    ],
    child: const NewsChallenge()));
}

class NewsChallenge extends StatelessWidget {
  const NewsChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialRoute:  HomeScreen.id,
      routes:  {
        NewDetailsScreen.id:(ctx)=>const NewDetailsScreen()
      },
    );
  }
}
