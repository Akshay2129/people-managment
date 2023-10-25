import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class calender extends StatefulWidget {
  const calender({super.key});

  @override
  State<calender> createState() => _calenderState();
}

// ignore: camel_case_types
class _calenderState extends State<calender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 232, 232, 232)),
        width: 350.w,
        child: CleanCalendar(
          datesForStreaks: [
            DateTime(2022, 8, 5),
            DateTime(2022, 8, 6),
            DateTime(2022, 8, 7),
            DateTime(2022, 8, 9),
            DateTime(2022, 8, 10),
            DateTime(2022, 8, 11),
            DateTime(2022, 8, 13),
            DateTime(2022, 8, 20),
            DateTime(2022, 8, 21),
            DateTime(2022, 8, 23),
            DateTime(2022, 8, 24),
          ],
        ),
      ),
    );
  }
}
