import 'package:flutter/material.dart';

import '../../../app_constants/color_constants.dart';

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({Key? key, required this.icon}) : super(key: key);

  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor:  AppColors.grey,
      child:  IconButton(
        onPressed: (){},
        icon:  Icon(icon,size: 22,color: Colors.black,),
      ),
    );
  }
}
