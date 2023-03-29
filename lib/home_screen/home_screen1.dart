import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  double percent = 0.65;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.wb_sunny_outlined,
                          color: Color(0XFFFFD6DD),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "GOOD MORNING",
                          style: GoogleFonts.rubik(
                            color: const Color(0XFFFFD6DD),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Madelyn Dias",
                      style: GoogleFonts.rubik(
                        color: const Color(0XFFFFFFFF),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const Expanded(child: SizedBox()),
                Image.asset("images/profile1.png"),
                SizedBox(
                  width: width * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Container(
                height: height * 0.1,
                width: width,
                decoration: BoxDecoration(
                  color: const Color(0XFFFFCCD5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Stack(
                    children: [
                      Image.asset("images/v1.png"),
                      Image.asset("images/v2.png"),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Text(
                                      "RECENT QUIZ",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFFB26673),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.05,
                                      ),
                                      const Icon(
                                        Icons.headset,
                                        color: Color(0XFF660012),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Text(
                                        "A Basic Music Quiz",
                                        style: GoogleFonts.rubik(
                                          color: const Color(0XFF660012),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              CircularPercentIndicator(
                                radius: 28,
                                backgroundColor: const Color(0XFFFFB2C0),
                                animationDuration: 1000,
                                animation: true,
                                lineWidth: 28,
                                percent: percent,
                                progressColor: const Color(0XFFFF8FA2),
                                center: Center(
                                    child: Text("$percent%",
                                        style: GoogleFonts.rubik(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Container(
                height: height * 0.28,
                width: width,
                decoration: BoxDecoration(
                  color: const Color(0XFF9087E5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "images/background2.png",
                        width: width,
                        height: height * 0.28,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/10.png",
                                width: width * 0.15,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: height * 0.02),
                              child: Column(
                                children: [
                                  Text(
                                    "FEATURED",
                                    style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  SizedBox(
                                    width: width * 0.5,
                                    child: Text(
                                      "Take part in challenges with friends or other players",
                                      style: GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          minimumSize:
                                              Size(width * 0.2, height * 0.05),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      child: Row(
                                        children: [
                                          Image.asset("images/icon.png"),
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          Text(
                                            "Find Friends",
                                            style: GoogleFonts.rubik(
                                                color: const Color(0XFF6A5AE0),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: height * 0.2, end: width * 0.02),
                              child: Image.asset("images/11.png"),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: Container(
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Live Quizzes",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFF0C092A),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                                style: GoogleFonts.rubik(
                                    color: const Color(0XFF6A5AE0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: const Color(0XFFEFEEFC), width: 2),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/12.png",
                                  height: height * 0.0999,
                                  width: width * 0.22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Statistics Math Quiz",
                                      style: GoogleFonts.rubik(
                                          color: const Color(0XFF0C092A),
                                      fontSize: 16,fontWeight: FontWeight.w500,),
                                    ),
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Math • 12 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                const Icon(Icons.navigate_next_outlined,color: Color(0XFF6A5AE0),size: 36,),
                                SizedBox(width: width*0.02),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: const Color(0XFFEFEEFC), width: 2),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/13.png",
                                  height: height * 0.0999,
                                  width: width * 0.22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Integers Quiz",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF0C092A),
                                        fontSize: 16,fontWeight: FontWeight.w500,),
                                    ),
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Math • 10 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                const Icon(Icons.navigate_next_outlined,color: Color(0XFF6A5AE0),size: 36,),
                                SizedBox(width: width*0.02),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: const Color(0XFFEFEEFC), width: 2),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/12.png",
                                  height: height * 0.0999,
                                  width: width * 0.22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Statistics Math Quiz",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF0C092A),
                                        fontSize: 16,fontWeight: FontWeight.w500,),
                                    ),
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Math • 12 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                const Icon(Icons.navigate_next_outlined,color: Color(0XFF6A5AE0),size: 36,),
                                SizedBox(width: width*0.02),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: const Color(0XFFEFEEFC), width: 2),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/12.png",
                                  height: height * 0.0999,
                                  width: width * 0.22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Statistics Math Quiz",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF0C092A),
                                        fontSize: 16,fontWeight: FontWeight.w500,),
                                    ),
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Math • 12 Quizzes",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                const Icon(Icons.navigate_next_outlined,color: Color(0XFF6A5AE0),size: 36,),
                                SizedBox(width: width*0.02),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
