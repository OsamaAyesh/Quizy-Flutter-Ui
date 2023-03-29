import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting1Screen extends StatefulWidget {
  const Setting1Screen({Key? key}) : super(key: key);

  @override
  State<Setting1Screen> createState() => _Setting1ScreenState();
}

class _Setting1ScreenState extends State<Setting1Screen> {
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Settings",
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                "ACCOUNT",
                style: GoogleFonts.rubik(
                  color: const Color(0XFF868495),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 76.h,
            width: 327.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFFEFEEFC),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: const Icon(
                    Icons.person_outline,
                    color: Color(0XFF6A5AE0),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Update Profile",
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 180.w,
                      child: Text(
                        "Update username, country, etc",
                        style: GoogleFonts.rubik(
                          color: const Color(0XFF858494),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 13.w,
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0XFF0C092A),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 76.h,
            width: 327.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFFEFEEFC),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: const Icon(
                    Icons.email_outlined,
                    color: Color(0XFF6A5AE0),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Change Email Address",
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "madias@yahoo.com",
                      style: GoogleFonts.rubik(
                        color: const Color(0XFF858494),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 13.w,
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0XFF0C092A),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 76.h,
            width: 327.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFFEFEEFC),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: const Icon(
                    Icons.lock_open_outlined,
                    color: Color(0XFF6A5AE0),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Change Password",
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "last change 1 year ago",
                      style: GoogleFonts.rubik(
                        color: const Color(0XFF858494),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 13.w,
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0XFF0C092A),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                "OTHER",
                style: GoogleFonts.rubik(
                  color: const Color(0XFF868495),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: SwitchListTile(
              activeColor: const Color(0XFF6A5AE0),
              title: Text(
                "Notification",
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              value: notification,
              onChanged: (bool? value) {
                setState(() {
                  notification = !notification;
                });
              },
            ),
          ),
          Container(
            height: 76.h,
            width: 327.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFFEFEEFC),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: const Icon(
                    Icons.gamepad_outlined,
                    color: Color(0XFF6A5AE0),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Change Difficulty",
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Easy, normal, hard",
                      style: GoogleFonts.rubik(
                        color: const Color(0XFF858494),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 13.w,
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0XFF0C092A),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 76.h,
            width: 327.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFFEFEEFC),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: const Icon(
                    Icons.question_mark_sharp,
                    color: Color(0XFF6A5AE0),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "FAQ",
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 180.w,
                      child: Text(
                        "Most frequently asked question",
                        style: GoogleFonts.rubik(
                          color: const Color(0XFF858494),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 13.w,
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0XFF0C092A),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "LOGOUT",
              style: GoogleFonts.rubik(
                color: const Color(0XFFEB5757),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
