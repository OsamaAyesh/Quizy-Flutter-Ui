import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/auth_screens/login_screens/login_screen.dart';
import 'package:quezy/auth_screens/login_screens/reset_password_screen2.dart';
class ResetPassword1 extends StatefulWidget {
  const ResetPassword1({Key? key}) : super(key: key);

  @override
  State<ResetPassword1> createState() => _ResetPassword1State();
}

class _ResetPassword1State extends State<ResetPassword1> {
  late TextEditingController _email;
  @override
  void initState() {
    // TODO: implement initState
    _email=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
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
          "Reset Password",
          style: GoogleFonts.rubik(
              color: const Color(0XFF0C092A),
              fontWeight: FontWeight.w500,
              fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: const LoginScreen()));
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
            SizedBox(height: height*0.03,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.04),
              child: Text("Enter your email and we will send you a link to reset your password.",style: GoogleFonts.rubik(
                color: const Color(0XFF858494),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
                textAlign: TextAlign.start,),
            ),
            SizedBox(height: height*0.03,),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding:   EdgeInsetsDirectional.only(start: width*0.04),
                child: Text(
                  "Email Addris",
                  style: GoogleFonts.rubik(
                    color: const Color(0XFF0C092A),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
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
                      borderSide: const BorderSide(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: ElevatedButton(
                onPressed: () {
                  if (_email.text.isNotEmpty) {
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: const ResetPassword2()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(width, height * 0.07),
                    backgroundColor: const Color(0XFF6A5AE0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text(
                  "Reset Password",
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
      ),
    );
  }
}
