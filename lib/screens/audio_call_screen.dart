import 'dart:ui';

import 'package:flutter/material.dart';

class AudioCallScreen extends StatelessWidget {
  const AudioCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/video_call_screen/video_doctor_backdrop.png',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x99001133),
                    Color(0x00FFFFFF),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff003331),
                    Color(0x00FFFFFF),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.white.withOpacity(.2),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/audio_call_screen/audio_call_avatar.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 56,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 48,
                child: Column(
                  children: [
                    const Text(
                      '05:00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildCallOptionButton(
                          image:
                              'assets/images/video_call_screen/video_bar_icon.png',
                        ),
                        buildCallOptionButton(
                          image:
                              'assets/images/video_call_screen/mic_bar_icon.png',
                        ),
                        buildCallOptionButton(
                          image:
                              'assets/images/video_call_screen/phone_bar_icon.png',
                          backgroundColor: const Color(0xffFF5656),
                          width: 70,
                          height: 70,
                          imageWidth: 20,
                          onTap: () => Navigator.of(context).pop(),
                        ),
                        buildCallOptionButton(
                          image:
                              'assets/images/video_call_screen/camera_bar_icon.png',
                        ),
                        buildCallOptionButton(
                          image:
                              'assets/images/video_call_screen/chat_bar_icon.png',
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Swipe up to show chat',
                      style: TextStyle(
                        color: Color(0xccFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildCallOptionButton({
    required String image,
    double width = 54,
    double height = 54,
    double imageWidth = 18,
    Color backgroundColor = const Color(0x4dFFFFFF),
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Center(
          child: Image.asset(
            image,
            width: imageWidth,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
