import 'package:app/constants.dart';
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
                  children: const [
                    Icon(Icons.ac_unit),
                    Icon(Icons.ac_unit),
                  ],
                ),
                const FlutterLogo(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Specialist Dentist',
                      style: TextStyle(
                        color: Color(0xb302100F),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Massachusetts General Hospital, Boston, MA',
                      style: TextStyle(
                        color: Color(0x8002100F),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildMetricContainer(
                          title: 'Patients',
                          value: '1000+',
                          icon: Icons.supervised_user_circle_outlined,
                        ),
                        buildMetricContainer(
                          title: 'Experiences',
                          value: '1 Year',
                          icon: Icons.calendar_today_rounded,
                        ),
                        buildMetricContainer(
                          title: 'Reviews',
                          value: '5.0',
                          icon: Icons.star_rounded,
                          color: AppPalette.socialStarColor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 24),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              'Working Time',
                              style: TextStyle(
                                color: Color(0xb302100F),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              'Mon - Fri, Morning 8 AM - Night 8 PM',
                              style: TextStyle(
                                color: Color(0x8002100F),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: const <Widget>[
                                Text(
                                  'Schedule',
                                  style: TextStyle(
                                    color: Color(0xb302100F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'May 2021',
                                  style: TextStyle(
                                    color: Color(0x8002100F),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0x8002100F),
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            height: 66,
                            padding: const EdgeInsets.only(left: 24),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildDateContainer(
                                  date: 'Mon',
                                  day: 12,
                                ),
                                buildDateContainer(
                                  date: 'Tue',
                                  day: 13,
                                ),
                                buildDateContainer(
                                  date: 'Wed',
                                  day: 14,
                                  isActive: true,
                                ),
                                buildDateContainer(
                                  date: 'Thu',
                                  day: 15,
                                ),
                                buildDateContainer(
                                  date: 'Fri',
                                  day: 16,
                                ),
                                buildDateContainer(
                                  date: 'Sat',
                                  day: 17,
                                ),
                                buildDateContainer(
                                  date: 'Sun',
                                  day: 18,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Container(
                                  width: 46,
                                  height: 46,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFAFAFA),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.favorite_rounded,
                                    // color: AppPalette.socialHeartColor,
                                    color: Color(0xffFF2222),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14),
                                      alignment: AlignmentDirectional.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff20BEB8),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Get Appointment',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDateContainer({
    required String date,
    required int day,
    bool isActive = false,
  }) {
    return Container(
      width: 49,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff20BEB8) : const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
              color: isActive ? Colors.white : const Color(0x8002100F),
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            '$day',
            style: TextStyle(
              color: isActive ? Colors.white : const Color(0x8002100F),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Container buildMetricContainer({
    required String title,
    required String value,
    required IconData icon,
    Color color = const Color(0xff20BEB8),
  }) {
    return Container(
      width: 100,
      height: 63,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0x1a02100F),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0x8002100F),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Icon(
                icon,
                color: color,
                size: 18,
              ),
              const SizedBox(width: 4),
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xb302100F),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
