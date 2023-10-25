import 'package:baap_project/10Mark_Attendance.dart';
import 'package:baap_project/13profile.dart';
import 'package:baap_project/14Hierarchy.dart';
import 'package:baap_project/17leaves.dart';
import 'package:baap_project/20Approvals.dart';
import 'package:baap_project/widgets/calendar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class entry extends StatefulWidget {
  const entry({super.key});

  @override
  State<entry> createState() => _entryState();
}

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
String? selectedValue;
String? name;

// ignore: camel_case_types
class _entryState extends State<entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromRGBO(207, 204, 204, 1),
        items: <Widget>[
          Image.asset("pic1.png"),
          Image.asset("pic2.png"),
          Image.asset("pic5.png"),
          Image.asset("pic3.png"),
          InkWell(
              onTap: () {
                //             Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ()), // Replace with your next page widget
                // );
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 410, // Adjust the height as needed

                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Leave Application",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Divider(
                                thickness: 2,
                                endIndent: 20,
                                indent: 0,
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 310.w,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 228, 228, 228),
                                borderRadius: BorderRadius.circular(
                                    8.0), // Optional: Add rounded corners
                              ),
                              child: DropdownButton<String>(
                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                },
                                underline:
                                    Container(), // Remove the default underline
                                items: [
                                  const DropdownMenuItem<String>(
                                    value: null,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text('Casual'),
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
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            SizedBox(
                              width: 310.w,
                              child: TextField(
                                // maxLength: 50,
                                decoration: InputDecoration(
                                  labelText: "Cause of the leave",
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 228, 228, 228),
                                      width: 1.0, // Customize the border width
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Customize the border radius
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            SizedBox(
                              width: 310.w,
                              child: TextField(
                                // maxLength: 50,
                                decoration: InputDecoration(
                                  labelText: "From Date",
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 228, 228, 228),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  suffixIcon: const Icon(Icons
                                      .calendar_month), // Add the calendar icon
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            SizedBox(
                              width: 310.w,
                              child: TextField(
                                // maxLength: 50,
                                decoration: InputDecoration(
                                  labelText: "To Date",
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 228, 228, 228),
                                      width: 1.0, // Customize the border width
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Customize the border radius
                                  ),
                                  suffixIcon: const Icon(Icons.calendar_month),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: "Half Day",
                                    groupValue: name,
                                    onChanged: (value) {
                                      setState(() {
                                        name = value.toString();
                                      });
                                    }),
                                const Text("Half Day ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 250),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => leaves(),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    // shape: RoundedRectangleBorder(
                                    //   borderRadius: BorderRadius.circular(30),
                                    // ),
                                  ),
                                  child: const Text("Apply")),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Image.asset("pic4.png"))
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Jeff Walker",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text("Administrator,Food Factory"),
                    ],
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
              SizedBox(
                height: 10.h,
              ),
              const calender(),
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
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 157, 157)),
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
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 157, 157)),
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
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 157, 157)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Time entry",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: Colors.grey,
                indent: 15,
                endIndent: 15,
                thickness: 2,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 232, 232, 232),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text("Entry"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "11.30 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Exit"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "12 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Total time"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "3 hr 10 min",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Time entry missing",
                  style: TextStyle(color: Colors.red[400], fontSize: 15.sp),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 250, // Adjust the height as needed

                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Attendance Regularization",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Start time",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color.fromARGB(
                                              255, 158, 157, 157)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 50),
                                      child: Text(
                                        "Start time",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Color.fromARGB(
                                              255, 158, 157, 157),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: const Color.fromARGB(
                                                255, 158, 157, 157),
                                          ),
                                        ),
                                        child: Text(
                                          "09:00",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                158,
                                                157,
                                                157,
                                              ),
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          "AM",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 20, 177, 122),
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          "PM",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                158,
                                                157,
                                                157,
                                              ),
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: const Color.fromARGB(
                                                  255, 158, 157, 157),
                                            ),
                                          ),
                                          child: Text(
                                            "07:00",
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                  255,
                                                  158,
                                                  157,
                                                  157,
                                                ),
                                                fontSize: 18.sp),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          "AM",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 20, 177, 122),
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          "PM",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                158,
                                                157,
                                                157,
                                              ),
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  width: 300.w,
                                  height: 50.h,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      labelText:
                                          'Explain the reason for regularization',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                10.0)), // Adjust the radius value as needed
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "Apply leave Instead ?",
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          158,
                                          157,
                                          157,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 150),
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromRGBO(43, 42, 42,
                                                    1.0), // Background color
                                          ),
                                          child: Text(
                                            "Save",
                                            style: TextStyle(fontSize: 15.sp),
                                          )),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text("Regularize"),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              const Divider(
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 227, 227, 227),
        width: 200,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Menu Items",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MarkAtt(),
                              ));
                        },
                        child: const Text(
                          "Mark Attendace",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )),
                    size(5, 0),
                    TextButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Leaves(),));
                        },
                        child: const Text(
                          "Leave Requests",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )),
                    size(5, 0),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Regularization",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )),
                    size(5, 0),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => hierarchy(),
                              ));
                        },
                        child: const Text(
                          "Hiearchies",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )),
                    size(5, 0),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Company Details",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )),
                    size(5, 0),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => appro(),
                              ));
                        },
                        child: const Text(
                          "Approvals",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )),
                    size(5, 0),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profile(),
                              ));
                        },
                        child: const Text(
                          "Profile",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )),
                    size(5, 0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

size(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
  );
}
