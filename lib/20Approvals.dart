import 'package:baap_project/6Time-entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class appro extends StatefulWidget {
  const appro({super.key});

  @override
  State<appro> createState() => _approState();
}

class _approState extends State<appro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Approvals",
                  style: TextStyle(color: Colors.grey),
                ),
                // Image.asset("circula cross.png")
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
            Container(
              color: Color.fromARGB(248, 216, 211, 211),
              height: 100.h,
              width: 460.w,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Raosaheb Ghuge",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Project Maneger",
                    style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "8689988686",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.sp),
                      ),
                      Row(
                        children: [
                          Image.asset("cross.png"),
                          SizedBox(
                            width: 15.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Image.asset("tick.png"),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              color: Color.fromARGB(248, 216, 211, 211),
              height: 100.h,
              width: 460.w,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Deepli Awari",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Developar",
                    style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "8849958868",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.sp),
                      ),
                      Row(
                        children: [
                          Image.asset("cross.png"),
                          SizedBox(
                            width: 15.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Image.asset("tick.png"),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
