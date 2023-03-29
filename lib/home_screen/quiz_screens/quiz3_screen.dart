import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quezy/home_screen/quiz_screens/quiz4_screen.dart';

class Quiz3Screen extends StatefulWidget {
  Quiz3Screen({Key? key}) : super(key: key);


  @override
  State<Quiz3Screen> createState() => _Quiz3ScreenState();
}

class _Quiz3ScreenState extends State<Quiz3Screen> {
  @override
  Widget build(BuildContext context) {
    bool status = false;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Answers Explanation"),
        backgroundColor: Color(0XFF6A5AE0),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom, child:  Quiz4Screen()));
          },
              icon: const Icon(Icons.close, color: Colors.white,)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
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
                    SizedBox(height: 8.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "SELECTED ANSWER",
                          style: GoogleFonts.rubik(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF858494),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8.h,),
                    Container(
                      height:56.h ,
                      width: 327.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.red,
                          width: 2,
                        )
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16.w,),
                          Text("Robin van Persie",style: GoogleFonts.rubik(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),),
                          const Expanded(child: SizedBox()),
                          const Icon(Icons.close,color: Colors.red,),
                          SizedBox(width: 16.w,),

                        ],
                      ),
                    ),
                    SizedBox(height: 24.h,),
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "CORRECT ANSWER",
                          style: GoogleFonts.rubik(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF858494),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8.h,),
                    Container(
                      height:56.h ,
                      width: 327.w,
                      decoration: BoxDecoration(
                          color: const Color(0XFF53DF83),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0XFF53DF83),
                            width: 2,
                          )
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16.w,),
                          Text("Sadio Mane",style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),),
                          const Expanded(child: SizedBox()),
                          const Icon(Icons.done,color: Colors.white,),
                          SizedBox(width: 16.w,),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h,),
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "EXPLANATION",
                          style: GoogleFonts.rubik(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF858494),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text("Southampton's Sadio Mané has scored the fastest hat-trick in Premier League history in just two minutes and 56 seconds against Aston Villa on Saturday.",style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.start,),

                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
