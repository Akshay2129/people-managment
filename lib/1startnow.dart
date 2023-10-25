import 'package:baap_project/2second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mystart extends StatefulWidget {
  const Mystart({super.key});
  
  @override
  State<Mystart> createState() => _MystartState();
}

class _MystartState extends State<Mystart> {
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
                const Text("Welcome"),
                // SizedBox(
                //   height: 50,
                // ),
                const Text(
                  "Jeff Walkar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Text(
                  "people",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 35.sp),
                ),
                const Text(
                  "management on",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                const Text(
                  "your firgertip",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: 125.w,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const seoncd()));
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Start Now",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                const Text("Powered by"),
                Text(
                  "Food Factory",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
