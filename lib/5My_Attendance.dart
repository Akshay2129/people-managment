// ignore: file_names

import 'package:baap_project/26Organization.dart';
import 'package:baap_project/6Time-entry.dart';
import 'package:baap_project/widgets/calendar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class attendance extends StatefulWidget {
  const attendance({super.key});

  @override
  State<attendance> createState() => _attendanceState();
}

// ignore: camel_case_types
class _attendanceState extends State<attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromRGBO(207, 204, 204, 1),
        items: <Widget>[
          Image.asset("pic1.png"),
          Image.asset("pic2.png"),
          Image.asset("pic5.png"),
          Image.asset("pic3.png"),
          Image.asset("pic4.png")
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Jeff Walker",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text("Administrator,Food Factory"),
                  ],
                ),
              ),
              SizedBox(
                width: 80.w,
              ),
              Image.asset("bell.png"),
              SizedBox(
                height: 45,
                child: Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                  ),
                ),
              )
            ],
          ),
          const calender(),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: Container(
              height: 35.h,
              width: 315.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(230, 219, 217, 217)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => organization(),
                        ));
                  },
                  child: Text(
                    "Check In",
                    style: TextStyle(color: Colors.green, fontSize: 18.sp),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // height: 65.h,
                width: 100.w,
                color: const Color.fromARGB(137, 235, 231, 231),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "23",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.sp),
                      ),
                    ),
                    const Text(
                      "Present Days",
                      style:
                          TextStyle(color: Color.fromARGB(255, 158, 157, 157)),
                    ),
                  ],
                ),
              ),
              Container(
                // height: 65.h,
                width: 100.w,
                color: const Color.fromARGB(137, 235, 231, 231),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.sp),
                      ),
                    ),
                    const Text(
                      "Absent Days",
                      style:
                          TextStyle(color: Color.fromARGB(255, 158, 157, 157)),
                    ),
                  ],
                ),
              ),
              Container(
                // height: 65.h,
                width: 100.w,
                color: const Color.fromARGB(137, 235, 231, 231),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                    const Text(
                      "Leaves",
                      style:
                          TextStyle(color: Color.fromARGB(255, 158, 157, 157)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Leave Request",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
                indent: 30,
                endIndent: 30,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  "No recent leave request",
                  style: TextStyle(color: Color.fromARGB(255, 158, 157, 157)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              // height: 100,
              width: 350,
              color: const Color.fromARGB(255, 232, 232, 232),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("2 days"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "28 Dec, 22 - 29 Dec, 22",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("Sick Leave"),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   width: 60,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const entry(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 189, 226, 191),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Approved",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 139, 84),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: Colors.grey,
            indent: 30,
            endIndent: 30,
            thickness: 2,
          ),
        ],
      ),
      // endDrawer: Drawer(
      //   backgroundColor: Color.fromARGB(255, 227, 227, 227),
      //   width: 200,
      //   child: Padding(
      //     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 "Menu Items",
      //                 style: TextStyle(
      //                     decoration: TextDecoration.underline,
      //                     fontSize: 15,
      //                     color: Colors.grey),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 100,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               TextButton(
      //                   onPressed: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => const markAtt(),
      //                         ));
      //                   },
      //                   child: const Text(
      //                     "Mark Attendace",
      //                     style: TextStyle(fontSize: 15, color: Colors.grey),
      //                   )),
      //               size(5, 0),
      //               TextButton(
      //                   onPressed: () {
      //                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Leaves(),));
      //                   },
      //                   child: Text(
      //                     "Leave Requests",
      //                     style: TextStyle(fontSize: 15, color: Colors.grey),
      //                   )),
      //               size(5, 0),
      //               TextButton(
      //                   onPressed: () {},
      //                   child: Text(
      //                     "Regularization",
      //                     style: TextStyle(fontSize: 15, color: Colors.grey),
      //                   )),
      //               size(5, 0),
      //               TextButton(
      //                   onPressed: () {
      //                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Heirachi(),));
      //                   },
      //                   child: Text(
      //                     "Hiearchies",
      //                     style: TextStyle(fontSize: 15, color: Colors.grey),
      //                   )),
      //               size(5, 0),
      //               TextButton(
      //                   onPressed: () {},
      //                   child: Text(
      //                     "Company Details",
      //                     style: TextStyle(fontSize: 15, color: Colors.grey),
      //                   )),
      //               size(5, 0),
      //               TextButton(
      //                   onPressed: () {
      //                     // Navigator.push(context,MaterialPageRoute(builder:(context) =>Approval() ,));
      //                   },
      //                   child: Text(
      //                     "Approvals",
      //                     style: TextStyle(fontSize: 15, color: Colors.grey),
      //                   )),
      //               size(5, 0),
      //               TextButton(
      //                   onPressed: () {},
      //                   child: Text(
      //                     "Profile",
      //                     style: TextStyle(fontSize: 15, color: Colors.grey),
      //                   )),
      //               size(5, 0),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
