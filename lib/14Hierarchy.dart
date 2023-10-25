import 'package:baap_project/6Time-entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class hierarchy extends StatefulWidget {
  const hierarchy({super.key});

  @override
  State<hierarchy> createState() => _hierarchyState();
}

class _hierarchyState extends State<hierarchy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hierarchy",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Color.fromARGB(255, 158, 157, 157)),
                ),
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
            Text(
              "Sujata Shelke",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "HR Manager",
              style: TextStyle(color: Color.fromARGB(255, 158, 157, 157)),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 90.h,
              width: 90.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("profile3.png"), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 90.h,
              width: 90.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("profile5s.png"), fit: BoxFit.fill),
              ),
            ),
            Text(
              "Sushma Avhad (You)",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "HR Executive",
              style: TextStyle(
                color: Color.fromARGB(255, 158, 157, 157),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Your team",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("profile2.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      "Raosaheb S",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "HR Assistant",
                      style: TextStyle(
                        color: Color.fromARGB(255, 158, 157, 157),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 90.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("profile4.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      "Kamlesh G",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Office Boy",
                      style: TextStyle(
                        color: Color.fromARGB(255, 158, 157, 157),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 90.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("profile6.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      "Satish Bhave",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "HR Assistance",
                      style: TextStyle(
                        color: Color.fromARGB(255, 158, 157, 157),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
