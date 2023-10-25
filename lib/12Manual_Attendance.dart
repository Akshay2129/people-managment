// ignore: file_names
import 'package:baap_project/6Time-entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '10Mark_Attendance.dart';
import '11QR-code.dart';

class Manual extends StatefulWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  State<Manual> createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  bool rfidClicked = false;
  bool qrCodeClicked = false;
  bool manualClicked = true; // Set the default option
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mark Attendance",
                    style: TextStyle(fontSize: 15.sp),
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
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 30.h,
                width: 300.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 201, 201, 201),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          rfidClicked = true;
                          qrCodeClicked = false;
                          manualClicked = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MarkAtt()), // Replace with your actual screen
                            );
                          },
                          child: Text(
                            "RFID",
                            style: TextStyle(
                              fontWeight: rfidClicked
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          rfidClicked = false;
                          qrCodeClicked = true;
                          manualClicked = false;
                        });
                      },
                      child: InkWell(
                        // onTap:  Navigator.push(context, route),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const QRCode()), // Replace with your actual screen
                            );
                          },
                          child: Text(
                            "QR CODE",
                            style: TextStyle(
                              fontWeight: qrCodeClicked
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          rfidClicked = false;
                          qrCodeClicked = false;
                          manualClicked = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "MANUAL",
                          style: TextStyle(
                            fontWeight: manualClicked
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    height: 50.h,
                    color: const Color.fromARGB(255, 238, 237, 237),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      "Date",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  hintText: "12/12/2024",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                  suffixIcon: const Icon(Icons.calendar_month_rounded),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    height: 50.h,
                    width: 60.w,
                    color: const Color.fromARGB(255, 238, 237, 237),
                    padding: const EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        "In",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  hintText: "Search Department / Unit ",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sadashiv Lokhande",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      LiteRollingSwitch(
                        value: true,
                        textOn: "Present",
                        textOff: "Absent",
                        colorOn: Colors.green,
                        colorOff: Colors.redAccent,
                        iconOn: Icons.done,
                        iconOff: Icons.alarm_off,
                        textSize: 18.0,
                        onTap: () {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        onChanged: (bool position) {
                          print("The Button is: $position");
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Name", style: TextStyle(fontSize: 15.sp)),
                      LiteRollingSwitch(
                        value: true,
                        textOn: "Present",
                        textOff: "Absent",
                        colorOn: Colors.green,
                        colorOff: Colors.redAccent,
                        iconOn: Icons.done,
                        iconOff: Icons.alarm_off,
                        textSize: 18.0,
                        onTap: () {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        onChanged: (bool position) {
                          print("The Button is: $position");
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Geeta Talwar",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 230),
                    child: Text("Member Details"),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "profile3.png",
                          height: 110.h,
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
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 35, 36, 36), // Set the background color here
                      ),
                      child: const Text("Notify"),
                    ),
                  )
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
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 35, 36, 36), // Set the background color here
                      ),
                      child: const Text("Notify"),
                    ),
                  )
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
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 35, 36, 36), // Set the background color here
                      ),
                      child: const Text("Notify"),
                    ),
                  )
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
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 35, 36, 36), // Set the background color here
                      ),
                      child: const Text("Notify"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 30.h,
                          child: Image.asset("successful.png"),
                        ),
                        const SizedBox(
                            width:
                                10), // Add some space between the image and text
                        const Text(
                          "Successfully Notified Mr Sanjay Shelke",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
