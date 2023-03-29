import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/auth_screens/login_signup_screen.dart';

import '../login_screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0XFFEFEEFC),
      appBar: AppBar(
        backgroundColor: const Color(0XFFEFEEFC),
        elevation: 0,
        title: Text(
          "Sign Up",
          style: GoogleFonts.rubik(
              color: const Color(0XFF0C092A),
              fontWeight: FontWeight.w500,
              fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                child: const LoginSignupScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0XFF0C092A),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/signup_second_screen");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF6A5AE0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(width, height * 0.07)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign Up with Email",
                    style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(width, height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Color(0XFFE6E6E6)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/google.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login with Google",
                    style: GoogleFonts.rubik(
                      color: const Color(0XFF0C092A),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF0056B2),
                minimumSize: Size(width, height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/facebook.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login with Google",
                    style: GoogleFonts.rubik(
                      color: const Color(0XFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const LoginScreen()));
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.rubik(
                    color: const Color(0XFF6A5AE0),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            "images/textlogin.png",
            width: width * 0.85,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
