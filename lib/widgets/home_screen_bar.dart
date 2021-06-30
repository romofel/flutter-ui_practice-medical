import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreenBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: shrinkOffset < 50 ? Colors.transparent : Colors.red,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back',
                        style: AppTypography.montserrat.copyWith(
                          color: AppTypography.darkColor,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Jacob Jones',
                        style: AppTypography.montserrat.copyWith(
                          color: AppTypography.darkColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '$shrinkOffset',
                        style: AppTypography.montserrat.copyWith(
                          color: AppTypography.darkColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: AppPalette.avatarBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/home_screen/avatar@3x.png',
                      scale: 1.1,
                    ),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
