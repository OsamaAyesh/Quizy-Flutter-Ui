import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quezy/home_screen/home_screen.dart';

class Quiz10Screen extends StatefulWidget {
  const Quiz10Screen({Key? key}) : super(key: key);

  @override
  State<Quiz10Screen> createState() => _Quiz10ScreenState();
}

class _Quiz10ScreenState extends State<Quiz10Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Review Answers",
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom, child: const HomeScreen()));

              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 244.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0XFF6A5AE0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 16.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUIZ NAME',
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFFCDC8F5),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'English Premier League Quiz',
                                style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFF796AE3),
                                minimumSize: Size(48.w, 48.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            child: const Icon(
                              Icons.games_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Container(
                        height: 148.h,
                        width: 295.w,
                        decoration: const BoxDecoration(
                          color: Color(0XFFFF8FA2),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 24.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 40.w,
                                ),
                                CircularPercentIndicator(
                                  radius: 50,
                                  backgroundColor: const Color(0XFFFFB2C0),
                                  animationDuration: 1000,
                                  animation: true,
                                  lineWidth: 10,
                                  percent: 0.8,
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.white,
                                  center: Center(
                                    child: Text(
                                      "8/10",
                                      style: GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                SizedBox(
                                  width: 131.w,
                                  child: Text(
                                    "You answered 8 out of 10 questions",
                                    style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "images/r2.png",
                                  height: 21.h,
                                  width: 31.w,
                                ),
                                Image.asset("images/r3.png",
                                    height: 30.h, width: 65.w),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Text(
                  "Your Answers",
                  style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 930.h,
              width: 327.w,
              decoration: BoxDecoration(
                color: const Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "1",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Which mathematical symbol was the title of Ed Sheeran’s first album in 2011?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "Multiple Choices",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Bad Romance was Lady Gaga’s first No. 1 hit?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "True or False",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "3",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Who wrote the song 'Let's Get It On'?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "Voice Note",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "4",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Who was the 2 most streamed artist on Spotify in 2019?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "Checkbox",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "5",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Which mathematical symbol was the title of Ed Sheeran’s first album in 2011?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "Multiple Choices",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "6",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Bad Romance was Lady Gaga’s first No. 1 hit?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "True or False",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "7",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Who wrote the song 'Let's Get It On'?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "Voice Note",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "8",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 215.w,
                              child: Text(
                                "Who wrote the song 'Let's Get It On'?",
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                              width: 92.w,
                              child: Text(
                                "Voice Note",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0XFFF2994A),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(156.w, 56.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: const BorderSide(
                        color: Color(0XFFEFEEFC),
                        width: 2,
                      )),
                  child: Text(
                    "Edit Answer",
                    style: GoogleFonts.rubik(
                      color: const Color(0XFF6A5AE0),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF6A5AE0),
                      minimumSize: Size(156.w, 56.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: const BorderSide(
                        color: Color(0XFF6A5AE0),
                        width: 2,
                      )),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.rubik(
                      color:  Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 36.h,),

          ],
        ),
      ),
    );
  }
}
