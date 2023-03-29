import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/home_screen/quiz_screens/quiz1_screen.dart';

class ReviewQScreen extends StatefulWidget {
  const ReviewQScreen({Key? key}) : super(key: key);

  @override
  State<ReviewQScreen> createState() => _ReviewQScreenState();
}

class _ReviewQScreenState extends State<ReviewQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0XFF6A5AE0),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Create Quiz",
          style: GoogleFonts.rubik(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Image.asset(
                  "images/23.png",
                  height: 239.h,
                  width: 318.w,
                ),
              ],
            ),
            SizedBox(
              height: 178.h,
              width: 359.w,
              child: Stack(
                children: [
                  Image.asset(
                    "images/24.png",
                    height: 178.h,
                    width: 359.w,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16.w,
                          ),
                          Container(
                            height: 30.h,
                            width: 158.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFFEFEEFC),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/25.png",
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "TECH • 5 QUIZZES",
                                  style: GoogleFonts.rubik(
                                    color: const Color(0XFF6A5AE0),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              color: Color(0XFF858494),
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "Remote Work Tools Quiz",
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp),
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Text(
                          "Take this basic remote work tools quiz to test your tech knowledge.",
                          style: GoogleFonts.rubik(
                              color: const Color(0XFF858494),
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 654.h,
              width: 359.w,
              child: Stack(
                children: [
                  Image.asset(
                    "images/26.png",
                    height: 654.h,
                    width: 359.w,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Container(
                          height: 8.h,
                          width: 8.w,
                          decoration: BoxDecoration(
                              color: const Color(0XFF6A5AE0),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          children: [
                            Text(
                              "Questions",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                color: const Color(0XFF6A5AE0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "4",
                                  style: GoogleFonts.rubik(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Color(0XFF858494),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 494.h,
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
                                  SizedBox(width:16.w ,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 80.h,
                                        width: 170.w,
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
                                  Image.asset("images/27.png",height:56.h ,width: 56.w,fit: BoxFit.fitHeight,)
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
                                  SizedBox(width:16.w ,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 80.h,
                                        width: 170.w,
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
                                  Image.asset("images/28.png",height:56.h ,width: 56.w,fit: BoxFit.fitHeight,)
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
                                  SizedBox(width:16.w ,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 80.h,
                                        width: 170.w,
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
                                  Image.asset("images/29.png",height:56.h ,width: 56.w,fit: BoxFit.fitHeight,)
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
                                  SizedBox(width:16.w ,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 80.h,
                                        width: 170.w,
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
                                  Image.asset("images/31.png",height:56.h ,width: 56.w,fit: BoxFit.fitHeight,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const Quiz1Screen(),
                              ),
                            );

                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 57.h),
                              backgroundColor: const Color(0XFF6A5AE0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          child: Text(
                            "Add Quiz",
                            style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
