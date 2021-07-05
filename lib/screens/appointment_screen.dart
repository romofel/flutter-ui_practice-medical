import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  const Text(
                    'Appointment',
                    style: TextStyle(
                      color: Color(0xff02100F),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.more_vert_rounded,
                    color: Color(0xff02100F),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Connect With Doctor',
                style: TextStyle(
                  color: Color(0xb302100F),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),
              buildCallMethod(
                title: 'Voice Call',
                subtitle: 'Start voice call with doctor',
                image: 'assets/images/appointment_screen/phone_icon.png',
                backgroundColor: const Color(0xff45B5E5),
              ),
              const SizedBox(height: 24),
              buildCallMethod(
                title: 'Video Call',
                subtitle: 'Start video call with doctor',
                image: 'assets/images/appointment_screen/camera_icon.png',
                backgroundColor: const Color(0xff4DD663),
              ),
              const SizedBox(height: 24),
              buildCallMethod(
                title: 'Message',
                subtitle: 'Start text call with doctor',
                image: 'assets/images/appointment_screen/chat_icon.png',
                backgroundColor: const Color(0xffE58245),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  color: const Color(0xff20BEB8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCallMethod({
    required String title,
    required String subtitle,
    required String image,
    required Color backgroundColor,
  }) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 18,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff02100F),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Color(0xb302100F),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
