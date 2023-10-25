import 'package:baap_project/4Confirmation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class thied extends StatefulWidget {
  const thied({super.key});

  @override
  State<thied> createState() => _thiedState();
}

// ignore: camel_case_types
class _thiedState extends State<thied> {
  String? name;
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
                const Text(
                  "Welcome",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Raosahed Ghuge",
                    style: TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.bold)),
                const Divider(
                  color: Colors.grey,
                  indent: 2,
                ),
                Text(
                  "the baap company",
                  style:
                      TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
                ),
                const Text("Software Company"),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Choose your role to get started",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: Colors.grey,
                  indent: 2,
                ),
                Row(
                  children: [
                    Radio(
                        value: "Administrator",
                        groupValue: name,
                        onChanged: (value) {
                          setState(() {
                            name = value.toString();
                          });
                        }),
                    const Text("Administrator")
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Radio(
                        value: "Security Guard",
                        groupValue: name,
                        onChanged: (value) {
                          setState(() {
                            name = value.toString();
                          });
                        }),
                    const Text("Security Guard")
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Radio(
                        value: "Cook",
                        groupValue: name,
                        onChanged: (value) {
                          setState(() {
                            name = value.toString();
                          });
                        }),
                    const Text("Cook")
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Radio(
                        value: "IT Staff",
                        groupValue: name,
                        onChanged: (value) {
                          setState(() {
                            name = value.toString();
                          });
                        }),
                    const Text("IT Staff")
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Radio(
                        value: "Student",
                        groupValue: name,
                        onChanged: (value) {
                          setState(() {
                            name = value.toString();
                          });
                        }),
                    const Text("Student")
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Radio(
                        value: "Housekeeping",
                        groupValue: name,
                        onChanged: (value) {
                          setState(() {
                            name = value.toString();
                          });
                        }),
                    const Text("Housekeeping")
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: SizedBox(
                    height: 35.h,
                    width: 300.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConfirmationPage(),
                            ));
                      },
                      child: const Text("Request Access"),
                    ),
                  ),
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
