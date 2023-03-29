import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../login_screens/login_screen.dart';

class SignupSecondScreen extends StatefulWidget {
  const SignupSecondScreen({Key? key}) : super(key: key);

  @override
  State<SignupSecondScreen> createState() => _SignupSecondScreenState();
}

class _SignupSecondScreenState extends State<SignupSecondScreen> {
  int _index = 0;
  String title = 'What’s your email?';
  double _index2 = 0.3;
  String button = "Continue";
  late PageController _pageController;
  late TextEditingController _password;
  late TextEditingController _email;
  late TextEditingController _userName;
  bool done = false;
  bool visable1 = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _password = TextEditingController();
    _email = TextEditingController();
    _userName = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    _password.dispose();
    _email.dispose();
    _userName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (_index == 0) {
      title = 'What’s your email?';
      _index2 = 0.3;
      button = "Continue";
    } else if (_index == 1) {
      title = 'What’s your password?';
      button = "Continue";
      _index2 = 0.6;
    } else {
      title = 'Create a username';
      button = "Sign Up";
      _index2 = 1;
    }
    return Scaffold(
      backgroundColor: const Color(0XFFEFEEFC),
      appBar: AppBar(
        backgroundColor: const Color(0XFFEFEEFC),
        elevation: 0,
        title: Text(
          title,
          style: GoogleFonts.rubik(
              color: const Color(0XFF0C092A),
              fontWeight: FontWeight.w500,
              fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0XFF0C092A),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    _index = value;
                  });
                },
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Email Addris",
                          style: GoogleFonts.rubik(
                            color: const Color(0XFF0C092A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextField(
                          controller: _email,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Color(0XFF6A5AE0),
                            ),
                            hintText: "Your email address",
                            hintStyle: GoogleFonts.rubik(
                                color: const Color(0XFF858494),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  // style: BorderStyle(),
                                  color: Colors.white), //
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Password",
                          style: GoogleFonts.rubik(
                            color: const Color(0XFF0C092A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextField(
                          controller: _password,
                          onChanged: (_) {
                            setState(() {
                              if (_password.text.length > 7) {
                                done = true;
                              } else {
                                done = false;
                              }
                            });
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.lock_outline_rounded,
                              color: Color(0XFF6A5AE0),
                            ),
                            hintText: "Your password",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    visable1 = !visable1;
                                  });
                                },
                                icon: Icon(visable1
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.visibility_off_outlined)),
                            hintStyle: GoogleFonts.rubik(
                                color: const Color(0XFF858494),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.white), //
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                          ),
                          obscureText: visable1,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "Must be at least 8 characters.",
                            style: GoogleFonts.rubik(
                              color: const Color(0XFF858494),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            done ? Icons.done : Icons.close,
                            color: const Color(0XFF6A5AE0),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Username",
                          style: GoogleFonts.rubik(
                            color: const Color(0XFF0C092A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextField(
                          controller: _userName,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Your username",
                            prefixIcon: const Icon(
                              Icons.person_outline,
                              color: Color(0XFF6A5AE0),
                            ),
                            hintStyle: GoogleFonts.rubik(
                                color: const Color(0XFF858494),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  // style: BorderStyle(),
                                  color: Colors.white), //
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    Text(
                      "${_index + 1} to 3",
                      style: GoogleFonts.rubik(
                          color: const Color(0XFF6A5AE0),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                LinearPercentIndicator(
                  barRadius: const Radius.circular(20),
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 20,
                  progressColor: const Color(0XFF6A5AE0),
                  backgroundColor: const Color(0XFFE3E0F9),
                  percent: _index2,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_index == 0 && _email.text.isNotEmpty) {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeIn);
                      } else if (_index == 1 && _password.text.length > 7) {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeIn);
                      } else if (_index == 2 && _userName.text.isNotEmpty) {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const LoginScreen(),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(width, height * 0.07),
                        backgroundColor: const Color(0XFF6A5AE0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text(
                      button,
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
