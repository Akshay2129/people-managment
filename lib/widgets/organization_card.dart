import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OregnizationCard extends StatelessWidget {
  const OregnizationCard(
      {super.key,
      required this.logo,
      required this.companyname,
      this.companyType});

  final String logo;
  final String companyname;
  final String? companyType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 234, 234, 234), // Background color
      child: Row(
        children: [
          SizedBox(
            height: 90.h,
            width: 100.w,
            child: Image.asset(logo),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyname,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Text(companyType ?? ' '),
            ],
          )
        ],
      ),
    );
  }
}
