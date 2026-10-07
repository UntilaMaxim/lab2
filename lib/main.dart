import 'package:flutter/material.dart';

void main() {
  runApp(const MedicalApp());
}

class MedicalApp extends StatelessWidget {
  const MedicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical App',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF19A3B8),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// ===========================================================
// HOME SCREEN
// ===========================================================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color mainColor = Color(0xFF2AA9BA);
  static const Color darkText = Color(0xFF202333);
  static const Color greyText = Color(0xFF969CAB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(
                          'assets/images/profile_jonathan.png',
                        ),
                      ),

                      const SizedBox(width: 12),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jonathan',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: darkText,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'May you always be healthy',
                            style: TextStyle(
                              fontSize: 10,
                              color: greyText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.notifications_none_rounded,
                        size: 29,
                        color: darkText,
                      ),
                      Positioned(
                        top: 1,
                        right: 2,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // SEARCH
              Container(
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xFF9CA5B5),
                    ),

                    SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        'Search something',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF9CA5B5),
                        ),
                      ),
                    ),

                    Icon(
                      Icons.tune_rounded,
                      color: Color(0xFF9CA5B5),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // APPOINTMENT CARD
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const AppointmentDetailsScreen(),
                    ),
                  );
                },

                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(
                    18,
                    18,
                    18,
                    0,
                  ),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(13),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Appointment title
                      const Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Appointment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ],
                      ),

                      const SizedBox(height: 17),

                      // DATE
                      const Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                            size: 19,
                          ),

                          SizedBox(width: 8),

                          Text(
                            '22 October, 2023',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 11),

                      // TIME
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.white,
                            size: 19,
                          ),

                          SizedBox(width: 8),

                          Text(
                            '08:00 AM - 10.30 AM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 17),

                      // DOCTOR CARD
                      Container(
                        transform:
                        Matrix4.translationValues(0, 11, 0),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),

                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                              BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/doctor_richar.png',
                                width: 44,
                                height: 44,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(width: 10),

                            const Expanded(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. Richar Kandowen',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: darkText,
                                    ),
                                  ),

                                  SizedBox(height: 3),

                                  Text(
                                    'Child Specialist',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: greyText,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF4F4F4),
                                borderRadius:
                                BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.chat_bubble_outline,
                                size: 19,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 11),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 36),

              // HEALTH SERVICES
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Health Services',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),

                  Text(
                    'See All',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: serviceItem(
                      imagePath:
                      'assets/images/service_tooth.png',
                      title: 'Tooth',
                    ),
                  ),

                  Expanded(
                    child: serviceItem(
                      imagePath:
                      'assets/images/service_eye.png',
                      title: 'Eye',
                    ),
                  ),

                  Expanded(
                    child: serviceItem(
                      imagePath:
                      'assets/images/service_lungs.png',
                      title: 'Lungs',
                    ),
                  ),

                  Expanded(
                    child: serviceItem(
                      imagePath:
                      'assets/images/service_ear.png',
                      title: 'Ear',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 27),

              // NEARBY DOCTOR TITLE
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Doctor',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),

                  Text(
                    'See All',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              doctorItem(
                imagePath:
                'assets/images/doctor_emily.png',
                name: 'Dr. Emmly Lestiryno',
                specialty: 'General Practitioner',
                address:
                '3167 Durgan Shores - 500M from you',
              ),

              const SizedBox(height: 19),

              doctorItem(
                imagePath:
                'assets/images/doctor_sonja.png',
                name: 'Dr. Sonja Littel',
                specialty: 'Dental Specialist',
                address:
                '950 Sigrid Port - 753M from you',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =========================================================
  // SERVICE ITEM
  // =========================================================

  static Widget serviceItem({
    required String imagePath,
    required String title,
  }) {
    return Column(
      children: [
        Container(
          width: 58,
          height: 58,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(11),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),

        const SizedBox(height: 7),

        Text(
          title,
          style: const TextStyle(
            color: greyText,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  // =========================================================
  // DOCTOR ITEM
  // =========================================================

  static Widget doctorItem({
    required String imagePath,
    required String name,
    required String specialty,
    required String address,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(imagePath),
        ),

        const SizedBox(width: 11),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: darkText,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                specialty,
                style: const TextStyle(
                  fontSize: 10,
                  color: greyText,
                ),
              ),

              const SizedBox(height: 6),

              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 15,
                    color: mainColor,
                  ),

                  const SizedBox(width: 3),

                  Expanded(
                    child: Text(
                      address,
                      style: const TextStyle(
                        fontSize: 9,
                        color: greyText,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const Icon(
          Icons.favorite_border,
          color: Colors.grey,
          size: 23,
        ),
      ],
    );
  }
}

// ===========================================================
// APPOINTMENT DETAILS SCREEN
// ===========================================================

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState
    extends State<AppointmentDetailsScreen> {
  static const Color mainColor =
  Color(0xFF159DB6);

  int selectedTime = 1;
  int selectedDate = 0;

  final List<String> times = [
    '10.00 AM',
    '11.00 AM',
    '12.00 PM',
  ];

  final List<String> dates = [
    'Sun 4',
    'Mon 5',
    'Tue 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            24,
            20,
            24,
            30,
          ),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                children: [
                  InkWell(
                    borderRadius:
                    BorderRadius.circular(8),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const SizedBox(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 22,
                        ),
                      ),
                    ),
                  ),

                  const Expanded(
                    child: Text(
                      'Appointment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23,
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(width: 40),
                ],
              ),

              const SizedBox(height: 27),

              // DOCTOR INFORMATION
              Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                    BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/doctor_upul.png',
                      width: 118,
                      height: 118,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 18),

                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dr.Upul',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          'Denteeth',
                          style: TextStyle(
                            color:
                            Color(0xFF6BB9AF),
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 11),

                        // CONTACT BUTTONS
                        Row(
                          children: [
                            contactButton(
                              Icons.chat_bubble_outline,
                            ),

                            const SizedBox(width: 8),

                            contactButton(
                              Icons.phone_outlined,
                            ),

                            const SizedBox(width: 8),

                            contactButton(
                              Icons.videocam_outlined,
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        const Row(
                          children: [
                            Text(
                              'Payment',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight:
                                FontWeight.w500,
                              ),
                            ),

                            Spacer(),

                            Text(
                              '\$120.00',
                              style: TextStyle(
                                fontSize: 17,
                                color:
                                Color(0xFF69B7AD),
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // DETAILS
              const Text(
                'Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Worem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Nunc vulputate libero et velit interdum, ac aliquet odio mattis. '
                    'Class aptent taciti sociosqu ad litora torquent per conubia '
                    'nostra, per inceptos himenaeos. Curabitur tempus urna at turpis '
                    'condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, '
                    'semper iaculis condimentum ac, vestibulum eu nisl.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  height: 1.45,
                ),
              ),

              const SizedBox(height: 30),

              // WORKING HOURS TITLE
              const Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Working Hours',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // TIMES
              Row(
                children: List.generate(
                  times.length,
                      (index) {
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTime = index;
                          });
                        },

                        child: Container(
                          margin:
                          EdgeInsets.only(
                            right:
                            index ==
                                times.length -
                                    1
                                ? 0
                                : 11,
                          ),

                          height: 52,

                          alignment:
                          Alignment.center,

                          decoration:
                          BoxDecoration(
                            color:
                            selectedTime ==
                                index
                                ? mainColor
                                : Colors.white,

                            borderRadius:
                            BorderRadius.circular(
                                10),
                          ),

                          child: Text(
                            times[index],
                            style: TextStyle(
                              fontSize: 14,
                              color:
                              selectedTime ==
                                  index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight:
                              FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 28),

              // DATE TITLE
              const Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // DATES
              Row(
                children: List.generate(
                  dates.length,
                      (index) {
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedDate = index;
                          });
                        },

                        child: Container(
                          margin:
                          EdgeInsets.only(
                            right:
                            index ==
                                dates.length -
                                    1
                                ? 0
                                : 11,
                          ),

                          height: 52,

                          alignment:
                          Alignment.center,

                          decoration:
                          BoxDecoration(
                            color:
                            selectedDate ==
                                index
                                ? mainColor
                                : Colors.white,

                            borderRadius:
                            BorderRadius.circular(
                                10),
                          ),

                          child: Text(
                            dates[index],
                            style: TextStyle(
                              fontSize: 15,
                              color:
                              selectedDate ==
                                  index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight:
                              FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 65),

              // BOOK BUTTON
              SizedBox(
                width: double.infinity,
                height: 57,

                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(
                      SnackBar(
                        backgroundColor:
                        mainColor,
                        content: Text(
                          'Appointment booked: '
                              '${dates[selectedDate]}, '
                              '${times[selectedTime]}',
                        ),
                      ),
                    );
                  },

                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor:
                    mainColor,
                    foregroundColor:
                    Colors.white,
                    elevation: 0,

                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                          11),
                    ),
                  ),

                  child: const Text(
                    'Book an Appointment',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // CONTACT BUTTON
  Widget contactButton(IconData icon) {
    return Container(
      width: 31,
      height: 31,

      decoration: const BoxDecoration(
        color: Color(0xFFE4F1F0),
        shape: BoxShape.circle,
      ),

      child: Icon(
        icon,
        size: 17,
        color: Colors.black87,
      ),
    );
  }
}