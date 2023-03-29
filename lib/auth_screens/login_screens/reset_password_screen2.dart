import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/auth_screens/login_screens/login_screen.dart';
import 'package:quezy/auth_screens/login_screens/reset_password_screen1.dart';

class ResetPassword2 extends StatefulWidget {
  const ResetPassword2({Key? key}) : super(key: key);

  @override
  State<ResetPassword2> createState() => _ResetPassword2State();
}

class _ResetPassword2State extends State<ResetPassword2> {
  late TextEditingController _password;
  late TextEditingController _password1;

  bool visable = true;
  bool visable1 = true;
  bool done=false;

  @override
  void initState() {
    // TODO: implement initState
    _password = TextEditingController();
    _password1 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _password.dispose();
    _password1.dispose();
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
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: const ResetPassword1()));
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
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Text(
                "Your new password must be different from previous used passwords.",
                style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: width * 0.04),
                child: Text(
                  "Password",
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
                controller: _password,
                onChanged: (_){
                  setState(() {
                    if(_password.text.length>7){
                      done=true;
                    }else{
                      done=false;
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
                        const BorderSide(color: Color(0XFF6A5AE0), width: 3), //
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Color(0XFF6A5AE0), width: 3),
                  ),
                ),
                obscureText: visable1,
              ),
            ),
            SizedBox(
              height: height * 0.015,
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
                Icon(done?Icons.done:Icons.close,color: const Color(0XFF6A5AE0),),
                SizedBox(
                  width: width * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: width * 0.04),
                child: Text(
                  "Confirm Password",
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
                controller: _password1,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.lock_outline_rounded,
                    color: Color(0XFF6A5AE0),
                  ),
                  hintText: "Confirm Password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visable = !visable;
                        });
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
                    borderSide:
                        const BorderSide(color: Color(0XFF6A5AE0), width: 3), //
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Color(0XFF6A5AE0), width: 3),),
                ),
                obscureText: visable,
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: ElevatedButton(
                onPressed: () {
                  if (_password.text.isNotEmpty&&_password1.text.isNotEmpty&&_password.text==_password1.text) {
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child:const  LoginScreen()));
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
