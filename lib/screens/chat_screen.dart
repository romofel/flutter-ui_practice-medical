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
                      decoration: BoxDecoration(
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
                buildAppBarButton(
                    image:
                        'assets/images/chat_screen/appointment_phone_icon.png'),
                const SizedBox(width: 12),
                buildAppBarButton(
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
            child: Container(),
          ),
          Row(),
        ],
      ),
    );
  }

  Container buildAppBarButton({
    required String image,
  }) {
    return Container(
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
        ));
  }
}
