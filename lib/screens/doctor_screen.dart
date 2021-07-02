import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff20BEB8),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.ac_unit),
                    Icon(Icons.ac_unit),
                  ],
                ),
                FlutterLogo(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('Dr. Jenny Wilson'),
                      const Text('\$50.00'),
                      const Text('+5% VAT'),
                    ],
                  ),
                  const Text('Specialist Dentist'),
                  const Text('Massachusetts General Hospital, Boston, MA'),
                  Row(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
