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
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: const <Widget>[
                        Text(
                          'Dr. Jenny Wilson',
                          style: TextStyle(
                            color: Color(0xff02100F),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$50.00',
                          style: TextStyle(
                            color: Color(0xff20100F),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '+5% VAT',
                          style: TextStyle(
                            color: Color(0xff4DD663),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
