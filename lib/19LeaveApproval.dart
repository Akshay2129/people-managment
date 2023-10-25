import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class approval extends StatefulWidget {
  const approval({super.key});

  @override
  State<approval> createState() => _approvalState();
}

class _approvalState extends State<approval> {
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome"),
                    Text(
                      "Raosahed Ghuge",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    const Text("Administrator.the baap company"),
                  ],
                ),
                SizedBox(
                  width: 40.w,
                ),
                Image.asset("bell.png"),
                SizedBox(
                  height: 45,
                  child: Builder(
                    builder: (context) => IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Leave Requests",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 30.h,
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Employee",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Divider(),
            const Text(
              "No recent leave request",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              color: Color.fromARGB(235, 221, 220, 220),
              height: 130.h,
              width: 800.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "Isha Patani,",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                        const Text("Programmer")
                      ],
                    ),
                    const Text(
                      "2-days",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "28 Dec, 22 - 29 Dec, 22",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "sick leave",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 189, 226, 191),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text(
                              "Appoved",
                              style: TextStyle(
                                color: Color.fromARGB(255, 20, 139, 84),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text("Approve")),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text("Reject")),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              color: Color.fromARGB(235, 221, 220, 220),
              height: 105.h,
              width: 800.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "Suraj Dighe, ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                        const Text("Analyst")
                      ],
                    ),
                    const Text(
                      "1-days",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "28 Dec, 22 - 29 Dec, 22",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "sick leave",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 189, 226, 191),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text(
                              "Appoved",
                              style: TextStyle(
                                color: Color.fromARGB(255, 20, 139, 84),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
