import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: CachedNetworkImage(
              height: 120,
              imageUrl:"https://penaltyfile.com/wp-content/uploads/2020/06/different-types-of-sports-June32020-1-min.jpg",
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
              const Text("Sports",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10,),

              const Text("What Training Do Volleyball Players Need?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  Text("Mckindney",
                    style: TextStyle(color: Colors.grey),
                  ),

                  Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 10.0,
                  ),

                  Text("Feb 27,2023",
                    style: TextStyle(color: Colors.grey),
                  ),

                ],
              )


            ],
          ),
        )


      ],
    );
  }
}
