

import 'package:flutter/material.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/components/appbar/custom_icon_for_app_bar.dart';

import '../../../app_constants/color_constants.dart';

AppBar customAppBar( ){
  return AppBar(
    backgroundColor: AppColors.appBarColor,
    elevation: 0,

    actions: const [
      CustomIconAppBar(
       icon: Icons.search_rounded,
     ),
      SizedBox(width: 10,),
      CustomIconAppBar(
        icon: Icons.notifications_outlined,
      ),
      SizedBox(width: 10,),
    ],
    leading: const Padding(
      padding: EdgeInsets.all(8.0),
      child: CustomIconAppBar(
        icon: Icons.menu,
      ),
    ),
  );
}
