import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: AppTypography.montserrat.copyWith(
                    color: AppTypography.darkColor,
                  ),
                ),
                Text(
                  'Jacob Jones',
                  style: AppTypography.montserrat.copyWith(
                    color: AppTypography.darkColor,
                  ),
                ),
              ],
            ),
            centerTitle: false,
            actions: [
              Image(
                image: AssetImage('assets/images/home_screen/avatar.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
