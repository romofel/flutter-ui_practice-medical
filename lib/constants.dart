import 'package:flutter/material.dart';

class AppPalette {
  static const scaffoldBackgroundColor = Color(0xffFAFAFA);
  static const avatarBackgroundColor = Color(0xffFFE1CE);
  static const heroBackgroundGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color(0xff13BAB4), Color(0x6613BAB4)]);
  static const primaryColor = Color(0xff20BEB8);
  static const inactivePrimaryColor = Color(0x1a20BEB8);
  static const inactiveBackgroundColor = Color(0xffFAFAFA);
  static const chatBackgroundColor = Color(0xffF5F5F5);
  static const successColor = Color(0xff4DD663);
  static const callEndColor = Color(0xffFF5656);
  static const callButtonBackgroundColor = Color(0x4dFFFFFF);
  static const categoryBackgrounds = <String, LinearGradient>{
    'cardiology': LinearGradient(
      colors: [Color(0xffFF3471), Color(0x80FF4D82)],
    ),
    'neurology': LinearGradient(
      colors: [Color(0xff4DEAFF), Color(0x804DEDFF)],
    ),
    'dentist': LinearGradient(
      colors: [Color(0xff4D6AFF), Color(0x804D6AFF)],
    ),
    'pulmonology': LinearGradient(
      colors: [Color(0xffC44DFF), Color(0x80C44DFF)],
    ),
  };
  static const doctorCardBackgroundColors = [
    Color(0x1a5571FF),
    Color(0x1a02ADC7),
  ];
  static const iconBackgroundColors = [
    Color(0xff45B5E5),
    Color(0xff4DD663),
    Color(0xffE58245),
  ];
  static const socialStarColor = Color(0xffFFA41C);
  static const socialHeartColor = Color(0xffFF2C6C);
}
