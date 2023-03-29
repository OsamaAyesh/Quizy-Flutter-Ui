import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Leaderboard",style: GoogleFonts.rubik(
          color: Colors.white,
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        backgroundColor: const Color(0XFF6A5AE0),
        elevation: 0,
      ),
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 654.h,
            width: 359.w,
            child: SingleChildScrollView(
              physics:const  BouncingScrollPhysics(),
              child: Stack(
                children: [
                  Image.asset(
                    "images/26.png",
                    height: 700.h,
                    width: 359.w,
                    fit: BoxFit.fill,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 8.h,
                        ),
                        Center(
                          child: Container(
                            height: 8.h,
                            width: 8.w,
                            decoration: BoxDecoration(
                                color: const Color(0XFF6A5AE0),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 92.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color:const Color(0XFFEFEEFC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 16.w,),
                              Image.asset("images/111.png"),
                              SizedBox(width: 16.w,),
                              Image.asset("images/a1.png"),
                              SizedBox(width: 12.w,),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text("Davis Curtis",style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),),
                                SizedBox(height: 4.h,),
                                Text("2,569 points",style: GoogleFonts.rubik(
                                  color: const Color(0XFF858494),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),),
                              ],),
                              const Expanded(child: SizedBox()),
                              Image.asset("images/win1.png"),
                              SizedBox(width: 16.w,),


                            ],
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Container(
                          height: 92.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color:const Color(0XFFEFEEFC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 16.w,),
                              Image.asset("images/222.png"),
                              SizedBox(width: 16.w,),
                              Image.asset("images/a2.png"),
                              SizedBox(width: 12.w,),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Alena Donin",style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(height: 4.h,),
                                  Text("1,469 points",style: GoogleFonts.rubik(
                                    color: const Color(0XFF858494),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ],),
                              const Expanded(child: SizedBox()),
                              Image.asset("images/win2.png"),
                              SizedBox(width: 16.w,),


                            ],
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Container(
                          height: 92.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color:const Color(0XFFEFEEFC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 16.w,),
                              Image.asset("images/333.png"),
                              SizedBox(width: 16.w,),
                              Image.asset("images/a3.png"),
                              SizedBox(width: 12.w,),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Craig Gouse",style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(height: 4.h,),
                                  Text("1,053 points",style: GoogleFonts.rubik(
                                    color: const Color(0XFF858494),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ],),
                              const Expanded(child: SizedBox()),
                              Image.asset("images/win3.png"),
                              SizedBox(width: 16.w,),


                            ],
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Container(
                          height: 92.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color:const Color(0XFFEFEEFC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 16.w,),
                              Image.asset("images/444.png"),
                              SizedBox(width: 16.w,),
                              Image.asset("images/a4.png"),
                              SizedBox(width: 12.w,),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Madelyn Dias",style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(height: 4.h,),
                                  Text("590 points",style: GoogleFonts.rubik(
                                    color: const Color(0XFF858494),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ],),
                              const Expanded(child: SizedBox()),
                              Image.asset("images/win1.png"),
                              SizedBox(width: 16.w,),


                            ],
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Container(
                          height: 92.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color:const Color(0XFFEFEEFC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 16.w,),
                              Image.asset("images/555.png"),
                              SizedBox(width: 16.w,),
                              Image.asset("images/a5.png"),
                              SizedBox(width: 12.w,),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Zain Vaccaro",style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(height: 4.h,),
                                  Text("448 points",style: GoogleFonts.rubik(
                                    color: const Color(0XFF858494),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ],),
                              const Expanded(child: SizedBox()),
                              Image.asset("images/win1.png"),
                              SizedBox(width: 16.w,),


                            ],
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Container(
                          height: 92.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color:const Color(0XFFEFEEFC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 16.w,),
                              Image.asset("images/666.png"),
                              SizedBox(width: 16.w,),
                              Image.asset("images/p22.png"),
                              SizedBox(width: 12.w,),
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Skylar Geidt",style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(height: 4.h,),
                                  Text("2,569 points",style: GoogleFonts.rubik(
                                    color: const Color(0XFF858494),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ],),
                              const Expanded(child: SizedBox()),
                              Image.asset("images/win1.png"),
                              SizedBox(width: 16.w,),


                            ],
                          ),
                        ),
                        SizedBox(height: 16.h,),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
