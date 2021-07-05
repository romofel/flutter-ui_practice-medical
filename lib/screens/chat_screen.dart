import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 54, left: 24, right: 24),
            decoration: BoxDecoration(
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
                Container(),
                Column(
                  children: [
                    Text('Dr. Jenny Wilson'),
                    Text('Dentist Specialist'),
                  ],
                ),
                Container(
                    child: Image.asset(
                        'assets/images/chat_screen/appointment_phone_icon.png')),
                Container(
                    child: Image.asset(
                        'assets/images/chat_screen/appointment_video_icon.png')),
              ],
            ),
          ),
          Text('Today'),
          Expanded(
            child: Container(),
          ),
          Row(),
        ],
      ),
    );
  }
}
