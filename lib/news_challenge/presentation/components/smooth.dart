import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controller/bottom_provider.dart';

class SmoothComponent extends StatelessWidget {
  const SmoothComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
            top:5.0,
            bottom: 10
        ),
        child: Center(
          child: Consumer<BottomProvider>(
              builder: (context,provider,_) {
                return AnimatedSmoothIndicator(
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey.withOpacity(0.3),
                      activeDotColor: Colors.blue,
                    ),
                    activeIndex: provider.activeIndex,

                    count: 4
                );
              }
          ),
        ),
      ),
    );
  }
}
