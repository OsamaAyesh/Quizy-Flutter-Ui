import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/auth_screens/login_screens/login_screen.dart';
import 'package:quezy/auth_screens/signup_screens/signup_screen.dart';

class OutScreen extends StatefulWidget {
  const OutScreen({Key? key}) : super(key: key);

  @override
  State<OutScreen> createState() => _OutScreenState();
}

class _OutScreenState extends State<OutScreen> {
  String image = "images/6.png";
  String text = "Create gamified quizzes becomes simple";
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (_index == 0) {
      image = "images/6.png";
      text = "Create gamified quizzes becomes simple";
    } else if (_index == 1) {
      image = "images/7.png";
      text = "Find quizzes to test out your knowledge";
    } else {
      image = "images/8.png";
      text = "Take part in challenges with friends";
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "images/2.png",
              width: width,
              height: height,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: height,
              width: width,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.64,
                    width: width,
                    child: Column(
                      children: [
                        Expanded(
                          child: PageView(
                            onPageChanged: (int value) {
                              setState(() {
                                _index = value;
                              });
                            },
                            physics: const BouncingScrollPhysics(),
                            children: [
                              Image.asset(
                                "images/3.png",
                                width: width,
                                height: height * 0.4,
                              ),
                              Image.asset("images/4.png",
                                  width: width, height: height * 0.4),
                              Image.asset("images/5.png",
                                  width: width, height: height * 0.4),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Image.asset(image),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width,
                      height: height * 0.28,
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
                              text,
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF001833),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height:height*0.04 ,),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const SignUpScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(width, height * 0.07),
                                  backgroundColor: const Color(0XFF6A5AE0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
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
                              TextButton(onPressed: (){
                                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const LoginScreen()));

                               }, child: Text("Login",style: GoogleFonts.rubik(
                                color: const Color(0XFF6A5AE0),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
