import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/auth_screens/signup_screens/signup_screen.dart';

import 'login_screens/login_screen.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "images/background.png",
              width: width,
              fit: BoxFit.fitWidth,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/1.png",
                  width: width * 0.2,
                  height: height * 0.2,
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  "images/9.png",
                  width: width,
                  height: height * 0.35,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height * 0.37,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.01),
                          child: Text(
                            "Login or Sign Up",
                            style: GoogleFonts.rubik(
                              color: const Color(0XFF001833),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: Text(
                            "Login or create an account to take quiz, take part in challenge, and more.",
                            style: GoogleFonts.rubik(
                              color: const Color(0XFF858494),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const LoginScreen()));

                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(width, height * 0.07),
                                backgroundColor: const Color(0XFF6A5AE0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: Text(
                              "Login",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const SignUpScreen(),),);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(width, height * 0.07),
                                backgroundColor: const Color(0XFFE6E6E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: Text(
                              "Create an account",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Later",
                            style: GoogleFonts.rubik(
                                color: const Color(0XFF858494),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
