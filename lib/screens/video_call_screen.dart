import 'package:app/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/video_call_screen/video_doctor_backdrop.png'),
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
          Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Image.asset(
                            'assets/images/video_call_screen/caller_avatar.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              SafeArea(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
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
                          ),
                          buildCallOptionButton(
                            image:
                                'assets/images/video_call_screen/camera_bar_icon.png',
                          ),
                          buildCallOptionButton(
                            image:
                                'assets/images/video_call_screen/chat_bar_icon.png',
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const ChatScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
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
            ],
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
