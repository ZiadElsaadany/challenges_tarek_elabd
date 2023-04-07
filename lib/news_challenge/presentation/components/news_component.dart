import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/screens/new_details/new_details_screen.dart';

import '../../domain/entities/new.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({Key? key, required this.newsComponent}) : super(key: key);

    final NewEntity newsComponent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ( ) {
       Navigator.pushNamed(context, NewDetailsScreen.id,
       arguments: newsComponent
       );
      },
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: CachedNetworkImage(
                height: 120,
                imageUrl:newsComponent.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(newsComponent.categoryName,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 10,),

                 Text(newsComponent.overView,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children:  [
                    const CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person,color: Colors.white,),
                    ),
                    Text(newsComponent.authorName,
                      style: const TextStyle(color: Colors.grey),
                    ),

                    const Icon(
                      Icons.circle,
                      color: Colors.grey,
                      size: 10.0,
                    ),

                    Text(newsComponent.date,
                      style: const TextStyle(color: Colors.grey),
                    ),

                  ],
                )


              ],
            ),
          )


        ],
      ),
    );
  }
}
