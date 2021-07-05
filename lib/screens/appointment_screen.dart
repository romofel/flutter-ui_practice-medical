import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Appointment',
          style: TextStyle(
            color: Color(0xff02100F),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff02100F),
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert_rounded,
            color: Color(0xff02100F),
          ),
        ],
      ),
      body: const Center(
        child: Text('Appointment Screen'),
      ),
    );
  }
}
