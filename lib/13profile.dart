import 'package:baap_project/6Time-entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Profile"),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => entry(),
                          ));
                    },
                    child: Image.asset("cross1.png"))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "profile3.png",
                    height: 100.h,
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sujata Shelke",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Student",
                        style: TextStyle(fontSize: 17),
                      ),
                      const Text(
                        "BCA(Batch 1)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.phone_in_talk_rounded),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "8689986868",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.email_outlined),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "sujta@gmail.com",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 255),
              child: Text("Reporting to"),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Shrikant Dubey",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text("(AVP - TECHNOLOGY)"),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 165),
              child: Text("Guardian / Parents Details"),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Row(
              children: [
                Text(
                  "Sanjay shelke",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("(Father)"),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                const Icon(Icons.phone_in_talk_rounded),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "8689986868",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                const Icon(Icons.email_outlined),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "sujta@gmail.com",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Row(
              children: [
                Text(
                  "Sunita shelke",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("(Mother)"),
                )
              ],
            ),
            Row(
              children: [
                const Icon(Icons.phone_in_talk_rounded),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "8689986868",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                const Icon(Icons.email_outlined),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "sujta@gmail.com",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
