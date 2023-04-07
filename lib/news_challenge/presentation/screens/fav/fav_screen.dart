import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarek_elabd_challenges/core/utls/empty_fav.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/components/news_component.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/controller/fav_provider.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    debugPrint(  Provider.of<FavProvider>(context,listen: false).favList.toString());
    return Provider.of<FavProvider>(context).favList.isEmpty?
    const FavEmpty():

  ListView.builder(
    physics: const BouncingScrollPhysics(),
      itemCount:Provider.of<FavProvider>(context,listen: false).favList.length ,
      itemBuilder: (ctx,index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Dismissible(

          key: UniqueKey(),
          secondaryBackground: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
            ),
          ),

          background: Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            color: Colors.red,
            child: const Icon(Icons.delete,color: Colors.white,size: 30,),
          ),
          confirmDismiss: (d) async {
            if (d == DismissDirection.endToStart) {
              return false;
            }
            return true;
          },
          onDismissed: ( direction){
           if(direction == DismissDirection.startToEnd) {
             Provider.of<FavProvider>(context,listen: false).deleteNew(index);
             Provider.of<FavProvider>(context,listen: false).showSnackBar(context, false);
           }
          },
          child: NewsComponent(newsComponent: Provider.of<FavProvider>(context).favList[index])),
    );
  }
    );
  }
}
