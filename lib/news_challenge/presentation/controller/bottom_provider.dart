import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier {
  int currentIndex = 0;
 void changeCurrentIndex(int index){
    currentIndex = index;
    notifyListeners();
  }

  int activeIndex =0 ;
  void changeActiveIndex( int index) {
    activeIndex= index;
    notifyListeners() ;
  }
}