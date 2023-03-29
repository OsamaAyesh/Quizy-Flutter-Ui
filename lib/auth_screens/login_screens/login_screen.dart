import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/auth_screens/login_screens/reset_password_screen1.dart';
import 'package:quezy/auth_screens/login_signup_screen.dart';
import 'package:quezy/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _email;
  late TextEditingController _password;
  bool visable = true;

  @override
  void initState() {
    // TODO: implement initState
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

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
          "Login",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
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
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
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
            Image.asset(
              "images/or.png",
              width: width * 0.9,
              fit: BoxFit.fitWidth,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.07,
                    ),
                    Text(
                      "Email Addris",
                      style: GoogleFonts.rubik(
                        color: const Color(0XFF0C092A),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Your email address",
                      prefixIcon: const Icon(
                        Icons.email_outlined,
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
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.07,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.rubik(
                        color: const Color(0XFF0C092A),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: TextField(
                    controller: _password,
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
                            setState(
                              () {
                                visable = !visable;
                              },
                            );
                          },
                          icon: Icon(visable
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined)),
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
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                    obscureText: visable,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const HomeScreen()));
                      }
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
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const ResetPassword1(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot password?",
                    style: GoogleFonts.rubik(
                        color: const Color(0XFF6A5AE0),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Image.asset(
                  "images/textlogin.png",
                  width: width * 0.85,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
