
import 'package:flutter/material.dart';

import 'package:tarek_elabd_challenges/news_challenge/presentation/components/appbar/custom_app_bar.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/components/bottom_nav_bar/bottom_nav_bar_component.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/components/smooth.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/components/top_news_component.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/components/header_text_components.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/components/news_component.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const HomeScreenBody(),
        bottomNavigationBar: const CustomBottomNavBar()
    );
  }
}
class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [

          // ** //
          const HeaderTexts(txt: "Breaking News"),

          const TopNewsComponent(),

          const SmoothComponent(),
          const HeaderTexts(txt: "Recommendation"),

          SliverPadding(padding: const EdgeInsets.all(5),
            sliver:  SliverList(
              delegate: SliverChildBuilderDelegate((ctx,index) {
                return    const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: NewsComponent()
                );
              }),
            ),
          )



        ],
      ),
    );
  }
}
