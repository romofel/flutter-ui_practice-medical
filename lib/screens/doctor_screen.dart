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
          const SizedBox(height: 56),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back,
                          color: Color(0xb3FFFFFF))),
                  Image.asset(
                      'assets/images/doctor_view_screen/doctor_hero_avatar.png'),
                  const Icon(Icons.more_vert_rounded, color: Color(0xb3FFFFFF)),
                ],
              ),
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
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (context) {
                                          return SimpleDialog(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 30,
                                                    vertical: 70),
                                            children: [
                                              Image.asset(
                                                'assets/images/confirmation_screen/success_icon.png',
                                                height: 80,
                                              ),
                                              const SizedBox(height: 24),
                                              const Center(
                                                child: Text(
                                                  'Confirmation',
                                                  style: TextStyle(
                                                    color: Color(0xff02100F),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 16),
                                              const Center(
                                                child: Text(
                                                  'Your appointment with Dr. Jenny Wilson confirmed.',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0x9902100F),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 24),
                                              buildAppointmentDataRow(
                                                title: 'Booking Id',
                                                value: '#A806513',
                                              ),
                                              const Divider(),
                                              buildAppointmentDataRow(
                                                title: 'Date',
                                                value: 'May 15, 2021',
                                              ),
                                              const Divider(),
                                              buildAppointmentDataRow(
                                                title: 'Time',
                                                value: '12:00 AM',
                                              ),
                                              const SizedBox(height: 24),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  buildDialogButton(
                                                    title: 'Cancel',
                                                    foregroundColor:
                                                        const Color(0xb302100F),
                                                  ),
                                                  buildDialogButton(
                                                    title: 'Pay Advance',
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        const Color(0xff20BEB8),
                                                    hasBorder: false,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
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

  GestureDetector buildDialogButton({
    required String title,
    required Color foregroundColor,
    Color backgroundColor = Colors.transparent,
    bool hasBorder = true,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110,
        height: 46,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: hasBorder ? 1 : 0,
            color: const Color(0x3302100F),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: foregroundColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Row buildAppointmentDataRow({
    required String title,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xb302100F),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Color(0xff02100F),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
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
