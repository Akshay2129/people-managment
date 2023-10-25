// ignore: file_names
import 'package:baap_project/5My_Attendance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome"),
            Text(
              "Raosaheb Ghuge",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Colors.grey,
              indent: 2,
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Future.delayed(const Duration(seconds: 0), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const attendance()),
                    );
                  });
                },
                child: Lottie.asset('check.json'),
              ),
            ),
            Center(
              child: Text(
                "Your request is sent to the administrator.",
                style: TextStyle(color: Colors.grey, fontSize: 15.sp),
              ),
            ),
            Center(
              child: Text(
                "Check back again.",
                style: TextStyle(color: Colors.grey, fontSize: 15.sp),
              ),
            ),
            Expanded(
              // Wrap the Column in an Expanded widget
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end, // Align at the bottom
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
