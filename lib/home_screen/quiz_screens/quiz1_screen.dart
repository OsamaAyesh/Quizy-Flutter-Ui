import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/home_screen/quiz_screens/quiz2_screen.dart';

class Quiz1Screen extends StatefulWidget {
  const Quiz1Screen({Key? key}) : super(key: key);

  @override
  State<Quiz1Screen> createState() => _Quiz1ScreenState();
}

class _Quiz1ScreenState extends State<Quiz1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: (){},  icon:const  Icon(Icons.arrow_back,color: Colors.white,)),
      // elevation: 0,
      //   backgroundColor: const Color(0XFF6A5AE0),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "images/32.png",
              height: 250.h,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(
              child: Container(
                height: 504.h,
                width: 359.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "SPORTS",
                          style: GoogleFonts.rubik(
                            color: const Color(0XFF858494),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "Basic Trivia Quiz",
                          style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 70.h,
                      width: 327.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0XFFEFEEFC),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                color: const Color(0XFF6A5AE0),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Icon(
                              Icons.question_mark_sharp,
                              color: Colors.white,
                            )),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "10 questions",
                            style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Image.asset("images/divider.png"),
                          SizedBox(
                            width: 17.w,
                          ),
                          Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                color: const Color(0XFFFF8FA2),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Icon(
                              Icons.gamepad_outlined,
                              color: Colors.white,
                            )),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "+100 points",
                            style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "DESCRIPTION",
                          style: GoogleFonts.rubik(
                            color: const Color(0XFF858494),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        "Any time is a good time for a quiz and even better if that happens to be a football themed quiz!",
                        style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        Image.asset(
                          "images/35.png",
                          width: 40.w,
                          height: 40.h,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Brandon Curtis",
                              style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Creator",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF858494),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 72.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: Size(142.w, 56.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                    color: Color(0XFFEFEEFC),
                                    width: 2,
                                  ),
                                )),
                            child: Text(
                              "Play Solo",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                              ),
                            )),
                        SizedBox(
                          width: 16.w,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const Quiz2Screen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFF6A5AE0),
                                minimumSize: Size(169.w, 56.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: Text(
                              "Play with Friends",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                              ),
                            ))
                      ],
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
