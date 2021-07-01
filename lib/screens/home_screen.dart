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
            child: SizedBox(
              height: 157,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 314,
                    decoration: BoxDecoration(
                      gradient: AppPalette.heroBackgroundGradient,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/home_screen/hero_doctor@3x.png',
                          fit: BoxFit.cover,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Heart Specialist',
                              style: TextStyle(
                                color: Color(0xffFBFF33),
                              ),
                            ),
                            Text(
                              'Dr. Leslie Alexander',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Hospital in San Diego',
                              style: TextStyle(
                                color: Color(0xb3FFFFFF),
                              ),
                            ),
                            SizedBox(
                              child: Text('Get Appointment'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
