import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quezy/home_screen/quiz_screens/quiz7_screen.dart';
import 'package:quezy/home_screen/quiz_screens/quiz9_screen.dart';

class Quiz8Screen extends StatefulWidget {
  const Quiz8Screen({Key? key}) : super(key: key);

  @override
  State<Quiz8Screen> createState() => _Quiz8ScreenState();
}

class _Quiz8ScreenState extends State<Quiz8Screen> {
  final PageController _pageController = PageController();
  TextEditingController controller = TextEditingController();
  late Timer _timer;
  int counter = 10;
  String text = "";
  bool c1 = false;
  bool c2 = false;
  bool c3 = false;
  bool c4 = false;
  bool c5 = false;
  List text1=[];

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (counter > 0) {
          counter--;
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(const Duration(seconds: 11), () {
      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child:  Quiz9Screen()));
    });
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 34.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: const Color(0XFF9087E5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '1',
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 31.w,
                  ),
                  SizedBox(
                    width: 148.w,
                    height: 4.h,
                    child: LinearPercentIndicator(
                      barRadius: const Radius.circular(20),
                      lineHeight: 4.h,
                      animation: true,
                      animationDuration: 1000,
                      percent: 1,
                      backgroundColor: const Color(0XFF9087E5),
                      progressColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 31.w,
                  ),
                  Container(
                    height: 34.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      color: const Color(0XFFFF9B57),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.games_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '35',
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 694.h,
                width: 359.w,
                child: Container(
                  height: 694.h,
                  width: 359.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        CircularPercentIndicator(
                          radius: 32,
                          backgroundColor: const Color(0XFFFFB2C0),
                          animationDuration: 1000,
                          animation: true,
                          lineWidth: 32,
                          percent: counter / 10,
                          progressColor: const Color(0XFFFF8FA2),
                          center: Center(
                              child: Text("$counter",
                                  style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Image.asset(
                          "images/airport.png",
                          height: 151.h,
                          width: 327.w,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              "QUESTION 8 OF 8",
                              style: GoogleFonts.rubik(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0XFF858494),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Text(
                            "what does UAV stand for drone?",
                            style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 16.w),
                        //   child: TextField(
                        //     controller: controller,
                        //     onChanged: (String value) {
                        //       value="sdfsdfsd";
                        //       setState(() {
                        //         value="dsa";
                        //         controller="dslcds;" as TextEditingController;
                        //         // value=text;
                        //       });
                        //     },
                        //     decoration: InputDecoration(
                        //       enabledBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //             color: Color(0XFFEFEEFC),
                        //             width: 2,
                        //           )),
                        //     ),
                        //   ),
                        // ),//textfiled
                        Container(
                          height: 56.h,
                          width: 311.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0XFFEFEEFC),
                                width: 2,
                              )),
                          child:Row(
                            children: [
                              SizedBox(width: 16.w,),
                              for(int i=0;i<text1.length;i++)
                              Text(text1[i]+" "),
                            ],
                          )
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  c1 = !c1;
                                  if (c1) {
                                    if(!(text1.contains("Under"))){
                                      text += "Under";
                                      text1.add('Under');
                                    }
                                  } else {
                                    if(text.contains("Under")){
                                      text1.remove('Under');
                                    }
                                  }
                                });
                              },
                              child: Container(
                                height: 56.h,
                                width: 96.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: c1 ? Color(0XFFEFEEFC) : Colors.white,
                                  border: Border.all(
                                      color: const Color(0XFFEFEEFC), width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "Under",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  c2 = !c2;
                                  if (c2) {
                                    if(!(text1.contains("Unmanned"))){
                                      text1.add('Unmanned');
                                    }
                                  } else {
                                    if(text1.contains("Unmanned")){
                                      text1.remove('Unmanned');
                                    }
                                  }
                                });
                              },
                              child: Container(
                                height: 56.h,
                                width: 132.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: c2
                                      ? const Color(0XFFEFEEFC)
                                      : Colors.white,
                                  border: Border.all(
                                      color: const Color(0XFFEFEEFC), width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "Unmanned",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  c3 = !c3;
                                  if (c3) {
                                    if(!(text1.contains("Air"))){
                                      text1.add('Air');
                                    }
                                  } else {
                                    if(text1.contains("Air")){
                                      text1.remove('Air');
                                    }
                                  }

                                });
                              },
                              child: Container(
                                height: 56.h,
                                width: 69.w,
                                decoration: BoxDecoration(
                                  color: c3
                                      ? const Color(0XFFEFEEFC)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color(0XFFEFEEFC), width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "Air",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 16.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  c4 = !c4;
                                  if (c4) {
                                    if(!(text1.contains("Aerial"))){
                                      text1.add('Aerial');
                                    }
                                  } else {
                                    if(text1.contains("Aerial")){
                                      text1.remove('Aerial');
                                    }
                                  }
                                });
                              },
                              child: Container(
                                height: 56.h,
                                width: 93.w,
                                decoration: BoxDecoration(
                                  color: c4
                                      ? const Color(0XFFEFEEFC)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color(0XFFEFEEFC), width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "Aerial",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  c5 = !c5;
                                  if (c5) {
                                    if(!(text1.contains("Vehicle"))){
                                      text1.add('Vehicle');
                                    }
                                  } else {
                                    if(text1.contains("Vehicle")){
                                      text1.remove('Vehicle');
                                    }
                                  }
                                });
                              },
                              child: Container(
                                height: 56.h,
                                width: 105.w,
                                decoration: BoxDecoration(
                                  color: c5
                                      ? const Color(0XFFEFEEFC)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color(0XFFEFEEFC), width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "Vehicle",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
