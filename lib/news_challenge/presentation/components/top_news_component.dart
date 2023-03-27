import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/bottom_provider.dart';

class TopNewsComponent extends StatelessWidget {
  const TopNewsComponent({Key? key}) : super(key: key);

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
                      aspectRatio: 30/20,
                      viewportFraction: 0.75,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds:3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        provider.changeActiveIndex(index);
                      },
                    ),
                    items: ["https://penaltyfile.com/wp-content/uploads/2020/06/different-types-of-sports-June32020-1-min.jpg","https://penaltyfile.com/wp-content/uploads/2020/06/different-types-of-sports-June32020-1-min.jpg","https://penaltyfile.com/wp-content/uploads/2020/06/different-types-of-sports-June32020-1-min.jpg","https://penaltyfile.com/wp-content/uploads/2020/06/different-types-of-sports-June32020-1-min.jpg"].map((e) => Stack(
                      children: [
                        Stack(
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
                                  imageUrl:e,
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
                                    child: const Text("Sports",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'CNN Indonesia ',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.black
                                            ),
                                          ),
                                          const CircleAvatar(

                                            backgroundColor: Colors.blue,
                                            radius: 6,

                                            child: Icon(Icons.check,color: Colors.white,
                                              size: 12.0,
                                            ),
                                          ),

                                          const Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 6.0,
                                          ),
                                          Text(
                                            ' 6 hours'.toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.black
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'Alexander wears modified helmet in road races  ',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
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
