import 'package:baap_project/widgets/organization_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class organization extends StatefulWidget {
  const organization({super.key});

  @override
  State<organization> createState() => _organizationState();
}

class _organizationState extends State<organization> {
  List<String> companyName = [
    'the baap company',
    "the baap company",
    'the baap company',
    "the baap company"
  ];
  List<String> companyType = [
    'Software Company',
    "Software Company",
    'Software Company',
    "Software Company"
  ];
  List<String> logo = [
    'baaplogo.png',
    "baaplogo.png",
    'baaplogo.png',
    "baaplogo.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 180.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Search your organization",
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 150.h,
                  child: ListView.builder(
                      itemCount: companyName.length,
                      itemBuilder: (context, index) {
                        return OregnizationCard(
                          companyname: companyName[index],
                          logo: logo[index],
                          companyType: companyType[index],
                        );
                      }),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                const Text("Powered by"),
                Text(
                  "baap company",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
