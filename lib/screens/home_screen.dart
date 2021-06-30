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
          pinned: true,
          floating: false,
          delegate: HomeScreenBar(),
        ),
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(horizontal: 24),
          //   sliver: SliverAppBar(
          //     titleSpacing: 0,
          //     backgroundColor: Colors.transparent,
          //     title: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Welcome back',
          //           style: AppTypography.montserrat.copyWith(
          //             color: AppTypography.darkColor,
          //             fontSize: 12,
          //           ),
          //         ),
          //         Text(
          //           'Jacob Jones',
          //           style: AppTypography.montserrat.copyWith(
          //             color: AppTypography.darkColor,
          //             fontSize: 18,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //       ],
          //     ),
          //     centerTitle: false,
          //     actions: [
          //       Container(
          //         width: 56,
          //         height: 56,
          //         alignment: Alignment.bottomCenter,
          //         decoration: BoxDecoration(
          //           color: AppPalette.avatarBackgroundColor,
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         child: Image.asset(
          //           'assets/images/home_screen/avatar@3x.png',
          //           scale: 1.1,
          //         ),
          //       )
          //     ],
          //     expandedHeight: 148,
          //     flexibleSpace: FlexibleSpaceBar(
          //       title: Text('Hello World', style: AppTypography.montserrat.copyWith(
          //         color: AppTypography.darkColor,
          //       )),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
