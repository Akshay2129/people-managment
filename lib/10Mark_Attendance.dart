import 'package:baap_project/12Manual_Attendance.dart';
import 'package:baap_project/11QR-code.dart';
import 'package:baap_project/6Time-entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarkAtt extends StatefulWidget {
  const MarkAtt({super.key});

  @override
  State<MarkAtt> createState() => _MarkAttState();
}

final List<String> items = ['OUT', 'Exit'];
String? selectedValue;

class _MarkAttState extends State<MarkAtt> {
  bool rfidClicked = false;
  bool qrCodeClicked = false;
  bool manualClicked = false;

  get isLoading => true;

  get selectedDropdownValue => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                        child: Text(
                          "RFID",
                          style: TextStyle(
                              fontWeight: rfidClicked
                                  ? FontWeight.bold
                                  : FontWeight.normal),
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
                                : FontWeight.normal),
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Manual()), // Replace with your actual screen
                          );
                        },
                        child: Text(
                          "MANUAL",
                          style: TextStyle(
                              fontWeight: manualClicked
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "scanned Code",
                suffixIcon: const Icon(Icons.circle_outlined),
                // Add the DropdownButton in the prefixIcon
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButton<String>(
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                      underline: Container(), // Remove the default underline
                      items: [
                        const DropdownMenuItem<String>(
                          value: null,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('IN'),
                          ),
                        ),
                        ...items.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text("Member Details"),
            ),
            const Divider(),
            SizedBox(
              height: 15.h,
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
            SizedBox(
              height: 10.h,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 190),
              child: Text("Guardian / Parents Details"),
            ),
            SizedBox(
              height: 20.h,
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
                  padding: const EdgeInsets.only(left: 150),
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
                  padding: const EdgeInsets.only(left: 115),
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
                  padding: const EdgeInsets.only(left: 150),
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
                  padding: const EdgeInsets.only(left: 115),
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
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
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
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
