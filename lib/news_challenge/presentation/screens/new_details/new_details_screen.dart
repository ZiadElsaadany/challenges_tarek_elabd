import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarek_elabd_challenges/news_challenge/domain/entities/new.dart';
import 'package:tarek_elabd_challenges/news_challenge/presentation/controller/fav_provider.dart';

class NewDetailsScreen extends StatelessWidget {
  const NewDetailsScreen({Key? key}) : super(key: key);


  static const String id = "new details screen id";
  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as NewEntity;
    return Scaffold(
backgroundColor: Colors.black12,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black.withOpacity(0.8),
            pinned: true,
            expandedHeight:350,
            leading:   Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey.withOpacity(0.3),
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  } ,
                  icon: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: IconButton(
                    onPressed: (){
                      Provider.of<FavProvider>(context,listen: false).addFavList(args);
                      Provider.of<FavProvider>(context,listen: false).showSnackBar(context,

                          Provider.of<FavProvider>(context,listen: false).favList.contains(args)
                      );

                    } ,
                    icon:  Icon(
                      Provider.of<FavProvider>(context).favList.contains(args)?
                      Icons.bookmark: Icons.bookmark_add_outlined
                    ,color: Colors.white,size: 20,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: IconButton(
                    onPressed: (){
                    } ,
                    icon: const Icon(Icons.more_horiz,color: Colors.white,size: 20,),
                  ),
                ),
              ),

            ],
            flexibleSpace: FlexibleSpaceBar(
              background: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.black,
                    ],

                  ).createShader(
                    Rect.fromLTRB(0.0, 0.0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CachedNetworkImage(

                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      imageUrl: args.image,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(

                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                            vertical: 10
                            ),
                            child:   Text(args.categoryName,
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                           args.title,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              Text(
                                "Trending  ",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white
                                ),
                              ),

                              Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 6.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                args.date,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: Container(

              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight:Radius.circular(30) ,
                  topLeft: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 25
                ),                child: Column(
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                          backgroundColor: Color(0xff900D09),
                          child: Text(args.source.split(" ")[0])
                        ),
                        const SizedBox(width: 12,),
                        Text(args.source,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                        ),
                        const SizedBox(width: 12,),
                        const CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.check,size: 12,
                          ),
                        ),


                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Text(
args.overView,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
