import 'package:flutter/material.dart';
import 'package:tarek_elabd_challenges/news_challenge/domain/entities/new.dart';

class FavProvider extends ChangeNotifier{


  List<NewEntity> favList = [] ;

void  addFavList(NewEntity news) {
  favList.contains(news)?
  deleteNew(favList.indexOf(news)):
    favList.add(news);
    debugPrint(favList.toString());

    notifyListeners()  ;
  }
  void deleteNew(int index ) {
  favList.removeAt(index);
  notifyListeners();
  }


 void showSnackBar( context  ,bool  isDeleted){
  ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content:
      Text(isDeleted==false? "The news has been deleted from BookMarks.":
      "The news has been added to BookMarks.")));
  }

}