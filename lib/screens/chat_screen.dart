import 'package:app/screens/audio_call_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 54, bottom: 16, left: 24, right: 24),
            decoration: const BoxDecoration(
              color: Color(0x80FFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xff02100F),
                  ),
                ),
                const SizedBox(width: 16),
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: 46,
                      height: 46,
                      decoration: const BoxDecoration(
                        color: Color(0x80001133),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                            'assets/images/chat_screen/doctor_avatar.png'),
                      ),
                    ),
                    Container(
                      width: 11,
                      height: 11,
                      decoration: const BoxDecoration(
                        color: Color(0xff12C719),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dr. Jenny Wilson',
                      style: TextStyle(
                        color: Color(0xff02100F),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Dentist Specialist',
                      style: TextStyle(
                        color: Color(0x80001133),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                buildAppBarButton(context,
                    image:
                        'assets/images/chat_screen/appointment_phone_icon.png',
                    onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AudioCallScreen(),
                    ),
                  );
                }),
                const SizedBox(width: 12),
                buildAppBarButton(context,
                    image:
                        'assets/images/chat_screen/appointment_video_icon.png'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Today',
            style: TextStyle(
              color: Color(0x4d02100F),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                children: [
                  buildChatBlock(
                    timestamp: '12:00 PM',
                    chatChild: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Please lie down on your bed and unbutton your shirt so that I may check your chest',
                        style: TextStyle(
                          color: Color(0xb302100F),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  buildChatBlock(
                    timestamp: '9:30 PM',
                    chatChild: Row(
                      children: [
                        buildChatImageMessage(
                            'assets/images/chat_screen/chat_image_1.png'),
                        const SizedBox(width: 18),
                        buildChatImageMessage(
                            'assets/images/chat_screen/chat_image_2.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  buildChatBlock(
                    timestamp: '10:20 PM',
                    crossAxisAlignment: CrossAxisAlignment.end,
                    chatChild: Row(
                      children: [
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xff20BEB8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Yes, doctor',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  buildChatBlock(
                    timestamp: '12:00 PM',
                    chatChild: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'There is nothing to worry about. You have been suffering from viral fever.',
                        style: TextStyle(
                          color: Color(0xb302100F),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  buildChatBlock(
                    timestamp: '10:20 PM',
                    crossAxisAlignment: CrossAxisAlignment.end,
                    chatChild: Row(
                      children: [
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xff20BEB8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Do I need any medicine?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 46,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: const Color(0xffF5F5F5),
                        hintText: 'Type here...',
                        hintStyle: const TextStyle(
                          color: Color(0x8002100F),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: UnconstrainedBox(
                          child: Image.asset(
                            'assets/images/chat_screen/paper_clip_icon.png',
                            fit: BoxFit.cover,
                            width: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: const Color(0x1a20BEB8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/chat_screen/send_icon.png',
                      fit: BoxFit.cover,
                      width: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Container buildChatImageMessage(image) {
    return Container(
      width: 100,
      height: 125,
      decoration: BoxDecoration(
        color: const Color(0x1a20BEB8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Column buildChatBlock({
    required String timestamp,
    required Widget chatChild,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        chatChild,
        const SizedBox(height: 8),
        Text(
          timestamp,
          style: const TextStyle(
            color: Color(0x4d001133),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  GestureDetector buildAppBarButton(
    BuildContext context, {
    required String image,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0x1a20BEB8),
          ),
          child: Center(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 16,
            ),
          )),
    );
  }
}
