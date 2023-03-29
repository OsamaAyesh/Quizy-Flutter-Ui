import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quezy/home_screen/quiz_screens/quiz3_screen.dart';

class Quiz2Screen extends StatefulWidget {
  const Quiz2Screen({Key? key}) : super(key: key);

  @override
  State<Quiz2Screen> createState() => _Quiz2ScreenState();
}

class _Quiz2ScreenState extends State<Quiz2Screen> {
  final PageController _pageController = PageController();
  late Timer _timer;
  int counter= 10;
  void startTimer(){
    _timer=Timer.periodic(const Duration(seconds:1 ), (timer) {
      setState(() {
        if(counter>0){
          setState(() {
            counter--;
          });
        }
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 11),(){
      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child:  Quiz3Screen()));
    });
    startTimer();
    super.initState();
  }

  late Color color1,color2,color3,color4;
   bool x1=false,x2=false,x3=false,x4=false;

  @override
  Widget build(BuildContext context) {

    if(x1){
      color1=const Color(0XFFEFEEFC);
      color2=Colors.white;
      color3=Colors.white;
      color4=Colors.white;
    }else if(x2){
      color1=Colors.white;
      color2=const Color(0XFFEFEEFC);
      color3=Colors.white;
      color4=Colors.white;
    }else if(x3){
      color1=Colors.white;
      color2=Colors.white;
      color3=const Color(0XFFEFEEFC);
      color4=Colors.white;
    }else {
      color1=Colors.white;
      color2=Colors.white;
      color3=Colors.white;
      color4=const Color(0XFFEFEEFC);
    }
    return Scaffold(
      body: SafeArea(
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
                    percent: 0.2,
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
                      percent: counter/10,
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
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "QUESTION 3 OF 8",
                          style: GoogleFonts.rubik(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF858494),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        "Which player scored the fastest hat-trick in the Premier League?",
                        style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h,),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          x1=true;
                          x2=false;
                          x3=false;
                          x4=false;
                        });

                      },
                      child: Container(
                        height:56.h ,
                        width: 327.w,
                        decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0XFFEFEEFC),
                            width: 2,
                          )
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 16.w,),
                            Text("Sadio Mane",style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          x1=false;
                          x2=true;
                          x3=false;
                          x4=false;
                        });
                      },
                      child: Container(
                        height:56.h ,
                        width: 327.w,
                        decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: const Color(0XFFEFEEFC),
                              width: 2,
                            )
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 16.w,),
                            Text("Robin van Persie",style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          x1=false;
                          x2=false;
                          x3=true;
                          x4=false;
                        });
                      },
                      child: Container(
                        height:56.h ,
                        width: 327.w,
                        decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: const Color(0XFFEFEEFC),
                              width: 2,
                            )
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 16.w,),
                            Text("Harry Can",style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          x1=false;
                          x2=false;
                          x3=false;
                          x4=true;
                        });
                      },
                      child: Container(
                        height:56.h ,
                        width: 327.w,
                        decoration: BoxDecoration(
                            color: color4,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: const Color(0XFFEFEEFC),
                              width: 2,
                            )
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 16.w,),
                            Text("Christian Benteke",style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
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
