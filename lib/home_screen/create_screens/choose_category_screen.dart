import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/home_screen/create_screens/create_screen.dart';

class ChooseCategoryScreen extends StatefulWidget {
   const ChooseCategoryScreen({Key? key,required this.quiz}) : super(key: key);
   final String quiz;

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  // late Color color1;
  // late Color color2;
  // late Color color3;
  bool c1=true;
  bool c2=false;
  bool c3=false;
  bool c4=false;
  bool c5=false;
  bool c6=false;
  bool c7=false;
  bool c8=false;

  @override
  Widget build(BuildContext context) {
    // if(widget.quiz=="Math"){
    //   c1=true;
    //   c2=false;
    //   c3=false;
    //   c4=false;
    //   c5=false;
    //   c6=false;
    //   c7=false;
    //   c8=false;
    // }else if(widget.quiz=="Sports"){
    //   c1=false;
    //   c2=true;
    //   c3=false;
    //   c4=false;
    //   c5=false;
    //   c6=false;
    //   c7=false;
    //   c8=false;
    // }else if(widget.quiz=="Music"){
    //   c1=false;
    //   c2=false;
    //   c3=true;
    //   c4=false;
    //   c5=false;
    //   c6=false;
    //   c7=false;
    //   c8=false;
    // }else if(widget.quiz=="Science"){
    //   c4=false;
    //   c2=false;
    //   c3=false;
    //   c4=true;
    //   c5=false;
    //   c6=false;
    //   c7=false;
    //   c8=false;
    // }else if(widget.quiz=="Art"){
    //   c5=false;
    //   c2=false;
    //   c3=false;
    //   c4=false;
    //   c5=true;
    //   c6=false;
    //   c7=false;
    //   c8=false;
    // }else if(widget.quiz=="Travel"){
    //   c6=false;
    //   c2=false;
    //   c3=false;
    //   c4=false;
    //   c5=false;
    //   c6=true;
    //   c7=false;
    //   c8=false;
    // }else if(widget.quiz=="History"){
    //   c7=false;
    //   c2=false;
    //   c3=false;
    //   c4=false;
    //   c5=false;
    //   c6=false;
    //   c7=true;
    //   c8=false;
    // }else{
    //   c8=true;
    //   c2=false;
    //   c3=false;
    //   c4=false;
    //   c5=false;
    //   c6=false;
    //   c7=false;
    //   c8=true;
    // }
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
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 685.h,
                width: 349.w,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=true;
                                  c2=false;
                                  c3=false;
                                  c4=false;
                                  c5=false;
                                  c6=false;
                                  c7=false;
                                  c8=false;
                                });

                              },
                              child: Container(
                                height: 132.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: c1==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c1?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/math.png",color: c1? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "Math",
                                      style: GoogleFonts.rubik(
                                        color: c1? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "21 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c1? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=false;
                                  c2=true;
                                  c3=false;
                                  c4=false;
                                  c5=false;
                                  c6=false;
                                  c7=false;
                                  c8=false;
                                });
                              },
                              child: Container(
                                height: 132.h,
                                width: 156.w,
                                decoration: BoxDecoration(
                                  color: c2==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c2?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/sport.png",color: c2? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "Sports",
                                      style: GoogleFonts.rubik(
                                        color: c2? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "15 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c2? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=false;
                                  c2=false;
                                  c3=true;
                                  c4=false;
                                  c5=false;
                                  c6=false;
                                  c7=false;
                                  c8=false;
                                });

                              },
                              child: Container(
                                height: 132.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: c3==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c3?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/music.png",color: c3? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "Music",
                                      style: GoogleFonts.rubik(
                                        color: c3? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "12 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c3? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=false;
                                  c2=false;
                                  c3=false;
                                  c4=true;
                                  c5=false;
                                  c6=false;
                                  c7=false;
                                  c8=false;
                                });

                              },
                              child: Container(
                                height: 132.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: c4==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c4?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/science.png",color: c4? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "Science",
                                      style: GoogleFonts.rubik(
                                        color: c4? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "11 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c4? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=false;
                                  c2=false;
                                  c3=false;
                                  c4=false;
                                  c5=true;
                                  c6=false;
                                  c7=false;
                                  c8=false;
                                });

                              },
                              child: Container(
                                height: 132.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: c5==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c5?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/art.png",color: c5? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "Art",
                                      style: GoogleFonts.rubik(
                                        color: c5? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "33 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c5? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=false;
                                  c2=false;
                                  c3=false;
                                  c4=false;
                                  c5=false;
                                  c6=true;
                                  c7=false;
                                  c8=false;
                                });

                              },
                              child: Container(
                                height: 132.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: c6==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c6?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/travel.png",color: c6? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "Travel",
                                      style: GoogleFonts.rubik(
                                        color: c6? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "14 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c6? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=false;
                                  c2=false;
                                  c3=false;
                                  c4=false;
                                  c5=false;
                                  c6=false;
                                  c7=true;
                                  c8=false;
                                });

                              },
                              child: Container(
                                height: 132.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: c7==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c7?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/history.png",color: c7? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "History",
                                      style: GoogleFonts.rubik(
                                        color: c7? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "7 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c7? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:(){
                                setState((){
                                  c1=false;
                                  c2=false;
                                  c3=false;
                                  c4=false;
                                  c5=false;
                                  c6=false;
                                  c7=false;
                                  c8=true;
                                });

                              },
                              child: Container(
                                height: 132.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: c8==true ? const Color(0XFFFF8FA2):const Color(0XFFEFEEFC),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                        color: c8?const Color(0XFFFFA5B5):Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset("images/tech.png",color: c8? Colors.white:const  Color(0XFF6A5AE0),),
                                    ),
                                    SizedBox(height: 8.h,),
                                    Text(
                                      "Tech",
                                      style: GoogleFonts.rubik(
                                        color: c8? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "16 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: c8? Colors.white:const  Color(0XFF6A5AE0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ElevatedButton(
                          onPressed: () {
                            if(c1){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const  CreateScreen(quiz: "Math")));
                            }else if(c2){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const  CreateScreen(quiz: "Sports")));
                            }else if(c3){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const  CreateScreen(quiz: "Music")));
                            }else if(c4){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const  CreateScreen(quiz: "Science")));
                            }else if(c5){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const  CreateScreen(quiz: "Art")));
                            }else if(c6){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child:const  CreateScreen(quiz: "Travel")));
                            }else if(c7){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const  CreateScreen(quiz: "History")));
                            }else if(c8){
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const CreateScreen(quiz: "Tech")));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(327.w, 56.h),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
