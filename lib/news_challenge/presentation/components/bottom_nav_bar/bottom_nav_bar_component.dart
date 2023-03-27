import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../../controller/bottom_provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<BottomProvider>(
          builder: (context,provider,_) {
            return GNav(
                rippleColor: Colors.white, // tab button ripple color when pressed
                hoverColor: Colors.grey, // tab button hover color
                haptic: true, // haptic feedback
                selectedIndex: provider.currentIndex,
                onTabChange: (index){
                  provider.changeCurrentIndex(index);
                },
                tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
                gap: 5, // the tab button gap between icon and text
                color: Colors.grey.withOpacity(0.5), // unselected icon color
                activeColor: Colors.white,// selected icon and text color
                iconSize: 30, // tab button icon size
                tabBackgroundColor: Colors.blue, // selected tab background color
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // navigation bar padding
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite_border,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.people,
                    text: 'Profile',
                  )
                ]
            );
          }
      ),
    );
  }
}
