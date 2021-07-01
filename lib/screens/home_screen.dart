import 'package:app/constants.dart';
import 'package:app/widgets/home_screen_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            floating: false,
            delegate: HomeScreenBar(),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 157,
              padding: const EdgeInsets.only(left: 24),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 24);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 314,
                    decoration: BoxDecoration(
                      gradient: AppPalette.heroBackgroundGradient,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(width: 8),
                        Expanded(
                          child: Image.asset(
                            'assets/images/home_screen/hero_doctor@3x.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Heart Specialist',
                                  style: TextStyle(
                                    color: Color(0xffFBFF33),
                                  ),
                                ),
                                // const SizedBox(height: 4),
                                const Text(
                                  'Dr. Leslie Alexander',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Hospital in San Diego',
                                  style: TextStyle(
                                    color: Color(0xb3FFFFFF),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    'Get Appointment',
                                    style: TextStyle(
                                      color: Color(0xb302100F),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildIndicator(
                    height: 5,
                    width: 10,
                    opacity: 1,
                  ),
                  buildIndicator(),
                  buildIndicator(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Text('Categories'),
                  Text('View All'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildIndicator(
      {double height = 5,
      double width = 5,
      double radius = 5,
      double opacity = .1}) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: const Color(0xff20BEB8).withOpacity(opacity),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
