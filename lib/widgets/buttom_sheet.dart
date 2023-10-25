// // import 'package:flutter/material.dart';

// // class YourBottomSheetWidget extends StatelessWidget {
// //   const YourBottomSheetWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return ClipRRect(
// //       borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           ListTile(
// //             leading: Icon(Icons.info),
// //             title: Text("Regularize Time Entry"),
// //             subtitle: Text("Select a reason for regularizing the time entry."),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Text(
// //               "Choose a reason for regularizing your time entry. "
// //               "This could be due to a missed check-in or check-out.",
// //               style: TextStyle(fontSize: 16.0),
// //             ),
// //           ),
// //           ElevatedButton(
// //             onPressed: () {
// //               Navigator.pop(context); // Close the bottom sheet
// //             },
// //             child: Text("Submit"),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:lite_rolling_switch/lite_rolling_switch.dart';

// void mani() {
//   runApp(Twelve());
// }

// class Twelve extends StatefulWidget {
//   const Twelve({super.key});

//   @override
//   State<Twelve> createState() => _TwelveState();
// }

// class _TwelveState extends State<Twelve> {
//   String dropdownvalue = 'developer';

//   // List of items in our dropdown menu
//   var s = [
//     'security',
//     'kitchen',
//     'developer',
//     'coder',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: 1300.h,
//           // width: 430.w,
//           color: const Color.fromARGB(255, 138, 140, 151),
//           child: Padding(
//             padding: const EdgeInsets.only(top: 10, left: 20),
//             child: Column(
//               children: [
//                 Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Mark Attendence",
//                           style: TextStyle(fontSize: 20.sp),
//                         ),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.cancel_presentation_rounded))
//                       ],
//                     ),
//                   ],
//                 ),
//                 Divider(
//                   color: Colors.black,
//                   thickness: 2,
//                   endIndent: 500,
//                   indent: 10,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 50.h,
//                       width: 300.w,
//                       color: Color.fromARGB(255, 117, 116, 116),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(
//                             "RFID",
//                           ),
//                           Text("QR CODE"),
//                           Text(
//                             "MANUAL",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 40.h,
//                 ),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 50.h,
//                       width: 300.w,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Color.fromARGB(255, 197, 195, 192)),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Container(
//                             color: Color.fromARGB(255, 197, 195, 192),
//                             height: 50.h,
//                             child: Center(
//                               child: Text(
//                                 "Date",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Center(
//                             child: Text(
//                               "12/12/2024",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 30.w,
//                           ),
//                           InkWell(
//                               onTap: () {
//                                 // Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (context) =>Eightone()));
//                               },
//                               child: Icon(Icons.calendar_month_outlined))
//                         ],
//                       ),
//                     )
//                   ],
//                 ),

//                 SizedBox(
//                   height: 20,
//                 ),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 50.h,
//                       width: 300.w,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Color.fromARGB(255, 197, 195, 192)),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           SizedBox(
//                             width: 20.w,
//                           ),
//                           Center(
//                             child: Text(
//                               "In |",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Center(
//                               child: Text(
//                             "Search Department /Unit",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           )),
//                           SizedBox(width: 10.w),
//                           DropdownButton(
//                             value: dropdownvalue,

//                             icon: const Icon(Icons.keyboard_arrow_down),

//                             // Array list of items
//                             items: s.map((String items) {
//                               return DropdownMenuItem(
//                                 value: items,
//                                 child: Text(items),
//                               );
//                             }).toList(),

//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 dropdownvalue = newValue!;
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Name",
//                           style: TextStyle(fontSize: 15.sp),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 1.h),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Sadashiv Lokhande",
//                           style: TextStyle(fontSize: 20.sp),
//                         ),
//                         LiteRollingSwitch(
//                           value: true,
//                           textOn: "Present",
//                           textOff: "Absent",
//                           colorOn: Colors.green,
//                           colorOff: Colors.redAccent,
//                           iconOn: Icons.done,
//                           iconOff: Icons.alarm_off,
//                           textSize: 18.0,
//                           onTap: () {},
//                           onDoubleTap: () {},
//                           onSwipe: () {},
//                           onChanged: (bool position) {
//                             print("The Button is: $position");
//                           },
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 10.h),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Name", style: TextStyle(fontSize: 15.sp)),
//                         LiteRollingSwitch(
//                           value: true,
//                           textOn: "Present",
//                           textOff: "Absent",
//                           colorOn: Colors.green,
//                           colorOff: Colors.redAccent,
//                           iconOn: Icons.done,
//                           iconOff: Icons.alarm_off,
//                           textSize: 18.0,
//                           onTap: () {},
//                           onDoubleTap: () {},
//                           onSwipe: () {},
//                           onChanged: (bool position) {
//                             print("The Button is: $position");
//                           },
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Geeta Talwar",
//                           style: TextStyle(fontSize: 20.sp),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 16.h),
//                     Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Member Details",
//                               style: TextStyle(fontSize: 25.sp),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Divider(
//                       color: Colors.black,
//                       thickness: 2,
//                       endIndent: 50,
//                       indent: 2,
//                     ),
//                   ],
//                 ),

//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Image.network(
//                             "https://images.pexels.com/photos/1261459/pexels-photo-1261459.jpeg?auto=compress&cs=tinysrgb&w=600",
//                             height: 290.h,
//                             width: 170.w),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 10),
//                           child: Column(
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Sujata Shelke",
//                                     style: TextStyle(fontSize: 20.sp),
//                                   ),
//                                   SizedBox(
//                                     height: 5.h,
//                                   ),
//                                   Text("Student"),
//                                   Text("BCA (Batch 1)"),
//                                   SizedBox(height: 10.h),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         children: [
//                                           Image.asset(
//                                             "assets/phone.png",
//                                             height: 18.h,
//                                             color: Colors.black,
//                                           ),
//                                           SizedBox(
//                                             width: 10.w,
//                                           ),
//                                           Text("8689986868")
//                                         ],
//                                       ),
//                                       SizedBox(
//                                         height: 10.h,
//                                       ),
//                                       Row(
//                                         children: [
//                                           Icon(
//                                             Icons.message,
//                                             color: Colors.black,
//                                           ),
//                                           SizedBox(width: 10.w),
//                                           Text("sujata@gmail.com")
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Guardian / Parents Details"),
//                   ],
//                 ),
//                 SizedBox(height: 10.h),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Text("Sanjay Shelke (Father)",
//                             style: TextStyle(
//                                 fontSize: 20.sp, fontWeight: FontWeight.bold)),
//                         SizedBox(width: 4),
//                         Text("(Mother)")
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),

//                 Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Image.asset(
//                           "assets/phone.png",
//                           height: 20.h,
//                           color: Colors.black,
//                         ),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         Text("8689986868"),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text("Notify"),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromARGB(255, 58, 56, 56)),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15.h,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Icon(Icons.message),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         Text("sa@gmail.com"),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text("Notify"),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromARGB(255, 58, 56, 56)),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),

//                 SizedBox(
//                   height: 15.h,
//                 ),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           "Sunita Shelke ",
//                           style: TextStyle(
//                               fontSize: 20.sp, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(width: 4),
//                         Text("(Mother)")
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),

//                 Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Image.asset(
//                           "assets/phone.png",
//                           height: 20.h,
//                           color: Colors.black,
//                         ),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         Text("8689986868"),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text("Notify"),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromARGB(255, 58, 56, 56)),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15.h,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Icon(Icons.message),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         Text("su@gmail.com"),
//                         SizedBox(
//                           width: 15.w,
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text("Notify"),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromARGB(255, 58, 56, 56)),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),

//                 SizedBox(
//                   height: 50.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     InkWell(
//                         onTap: () {
//                           // Navigator.push(
//                           //     context,
//                           //     MaterialPageRoute(
//                           //         builder: (context) => thirteen()));
//                         },
//                         child: Lottie.asset(
//                           "name.json",
//                           height: 70.h,
//                           width: 50.w,
//                         )),
//                     Text("Successfully Notified Mr.Sanjay Shekle")
//                   ],
//                 ),

//                 //main column
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
