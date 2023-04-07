import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarek_elabd_challenges/news_challenge/domain/entities/new.dart';

import '../controller/bottom_provider.dart';
import '../screens/new_details/new_details_screen.dart';

class TopNewsComponent extends StatelessWidget {
  const TopNewsComponent({Key? key, required this.newEntityList}) : super(key: key);

  final List<NewEntity> newEntityList;

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FadeIn(
            duration: const Duration(milliseconds: 500),
            child: Consumer<BottomProvider>(
                builder: (context,provider,_) {
                  return CarouselSlider(
                    // carouselController: carouselController,
                    options:  CarouselOptions(
                      height: 200.0,
                      viewportFraction: 0.65,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds:3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        provider.changeActiveIndex(index);
                      },
                    ),
                    items: newEntityList.map((e) => Stack(
                      children: [
                        GestureDetector(
                          onTap: ( ) {
                            Navigator.pushNamed(context, NewDetailsScreen.id,
                            arguments: e
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),

                                  border: Border.all(color: Colors.black87,
                                      width: 2
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: CachedNetworkImage(
                                    height: 200,
                                    imageUrl:e.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(

                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child:  Text(e.categoryName,
                                        style: const TextStyle(
                                          fontSize: 10,
                                            color: Colors.white
                                        ),),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                             Text(
                                            e.source,
                                              style: const TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const CircleAvatar(

                                              backgroundColor: Colors.blue,
                                              radius: 6,

                                              child: Icon(Icons.check,color: Colors.white,
                                                size: 12.0,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.circle,
                                              color: Colors.white,
                                              size: 6.0,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                             e.date.toUpperCase(),
                                              style: const TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                         Text(
                                        e.title,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,

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

                      ],
                    )

                    ).toList(),
                  );
                }
            )
        ),
      ),
    );
  }
}
