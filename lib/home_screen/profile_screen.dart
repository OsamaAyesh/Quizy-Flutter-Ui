import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quezy/home_screen/setting_screens/setting1_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 3, vsync: this);
  String dropdownValue = "monthly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const Setting1Screen()));

              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              )),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/p1.png"),
                    const Expanded(child: SizedBox()),
                    Image.asset(
                      "images/p2.png",
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 64.h),
                  child: Center(child: Image.asset("images/p3.png")),
                )
              ],
            ),
            Container(
              height: 660.h,
              width: 359.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Madelyn Dias",
                    style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    height: 101.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      color: const Color(0XFF6A5AE0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "POINTS",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFFB0A8EF),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "500",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Image.asset("images/divider2.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.language_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "WORLD RANK",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFFB0A8EF),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "#1,438",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Image.asset("images/divider2.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.ads_click,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "LOCAL RANK",
                              style: GoogleFonts.rubik(
                                color: const Color(0XFFB0A8EF),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "#56",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                      controller: tabController,
                      labelStyle: GoogleFonts.rubik(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF6A5AE0)),
                      indicatorSize: TabBarIndicatorSize.label,
                      // indicatorColor:const Color(0XFF6A5AE0) ,
                      physics: const BouncingScrollPhysics(),
                      indicator: UnderlineTabIndicator(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0XFF6A5AE0)),
                        insets: EdgeInsets.symmetric(horizontal: 16.0.h),
                      ),
                      unselectedLabelColor: const Color(0XFF858494),
                      labelColor: const Color(0XFF6A5AE0),
                      unselectedLabelStyle: GoogleFonts.rubik(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF858494)),
                      tabs: const [
                        Tab(
                          text: "Badge",
                        ),
                        Tab(
                          text: "Stats",
                        ),
                        Tab(
                          text: "Details",
                        )
                      ]),
                  SizedBox(
                    height: 400.h,
                    child: TabBarView(controller: tabController, children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "images/p11.png",
                                width: 88.w,
                                height: 88.h,
                              ),
                              Image.asset(
                                "images/p12.png",
                                width: 88.w,
                                height: 88.h,
                              ),
                              Image.asset(
                                "images/p13.png",
                                width: 88.w,
                                height: 88.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "images/p14.png",
                                width: 88.w,
                                height: 88.h,
                              ),
                              Image.asset(
                                "images/p15.png",
                                width: 88.w,
                                height: 88.h,
                              ),
                              Image.asset(
                                "images/p16.png",
                                width: 88.w,
                                height: 88.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 16.h,
                            ),
                            Container(
                              height: 430.h,
                              width: 327.w,
                              decoration: BoxDecoration(
                                  color: const Color(0XFFE8E5FA),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("images/p17.png"),
                                      const Expanded(child: SizedBox()),
                                      Container(
                                        height: 34.h,
                                        width: 92.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: DropdownButton(
                                              value: dropdownValue,
                                              items: [
                                                DropdownMenuItem(
                                                  value: "monthly",
                                                  child: Text(
                                                    "monthly",
                                                    style: GoogleFonts.rubik(
                                                        color: const Color(
                                                            0XFF0C092A),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                DropdownMenuItem(
                                                  value: "yearly",
                                                  child: Text(
                                                    "yearly",
                                                    style: GoogleFonts.rubik(
                                                        color: const Color(
                                                            0XFF0C092A),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ],
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdownValue = value!;
                                                });
                                              }),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "You have played a total ",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "24 quizzes",
                                        style: GoogleFonts.rubik(
                                          color: const Color(0XFF6A5AE0),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                      Text(
                                        " this month! ",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 74,
                                    backgroundColor: Colors.white,
                                    animationDuration: 1000,
                                    animation: true,
                                    lineWidth: 14,
                                    percent: 0.7,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: const Color(0XFF6A5AE0),
                                    center: Center(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 35.h),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "37",
                                                  style: GoogleFonts.rubik(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "/50",
                                                  style: GoogleFonts.rubik(
                                                      color: const Color(
                                                          0XFF999999),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "quiz played",
                                              style: GoogleFonts.rubik(
                                                  color:
                                                      const Color(0XFF999999),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 96.h,
                                        width: 140.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Row(
                                              children: [
                                                const Expanded(
                                                    child: SizedBox()),
                                                const Icon(
                                                  Icons.edit,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(
                                                  width: 16.w,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  "5",
                                                  style: GoogleFonts.rubik(
                                                      color: Colors.black,
                                                      fontSize: 32.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const Expanded(
                                                    child: SizedBox()),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  "Quiz Created",
                                                  style: GoogleFonts.rubik(
                                                      color: Colors.black,
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                const Expanded(
                                                    child: SizedBox()),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 96.h,
                                        width: 140.w,
                                        decoration: BoxDecoration(
                                          color: const Color(0XFF6A5AE0),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Row(
                                              children: [
                                                const Expanded(
                                                    child: SizedBox()),
                                                const Icon(
                                                  Icons
                                                      .wb_incandescent_outlined,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 16.w,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  "21",
                                                  style: GoogleFonts.rubik(
                                                      color: Colors.white,
                                                      fontSize: 32.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const Expanded(
                                                    child: SizedBox()),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  "Quiz Won",
                                                  style: GoogleFonts.rubik(
                                                      color: Colors.white,
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                const Expanded(
                                                    child: SizedBox()),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 16.h,
                            ),
                            Container(
                              height: 286.h,
                              width: 327.w,
                              decoration: BoxDecoration(
                                  color: Color(0XFFE8E5FA),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Recent matches",
                                          style: GoogleFonts.rubik(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const Expanded(child: SizedBox()),
                                        Container(
                                          height: 34.h,
                                          width: 92.w,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: DropdownButton(
                                                value: dropdownValue,
                                                items: [
                                                  DropdownMenuItem(
                                                    value: "monthly",
                                                    child: Text(
                                                      "monthly",
                                                      style: GoogleFonts.rubik(
                                                          color: const Color(
                                                              0XFF0C092A),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "yearly",
                                                    child: Text(
                                                      "yearly",
                                                      style: GoogleFonts.rubik(
                                                          color: const Color(
                                                              0XFF0C092A),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ],
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownValue = value!;
                                                  });
                                                }),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "images/p21.png",
                                        height: 92.h,
                                        width: 60.w,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Text(
                                        "VS",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Image.asset(
                                        "images/p22.png",
                                        height: 60.h,
                                        width: 60.w,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0XFF5BD7BC),
                                            minimumSize: Size(72.w, 34.h),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                            )
                                          ),
                                          child: Text(
                                            "+100 QP",
                                            style: GoogleFonts.rubik(
                                                color: Colors.white),
                                          ))
                                    ],
                                  ),
                                  SizedBox(height: 10.h,),
                                 const  Divider(
                                    color: Color(0XFFD9D4F7),
                                    thickness: 2,
                                    endIndent: 16,
                                    indent: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "images/p23.png",
                                        height: 62.h,
                                        width: 60.w,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Text(
                                        "VS",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Image.asset(
                                        "images/p20.png",
                                        height: 92.h,
                                        width: 60.w,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              const Color(0XFFFF6681),
                                              minimumSize: Size(72.w, 34.h),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          ),
                                          child: Text(
                                            "-50 QP",
                                            style: GoogleFonts.rubik(
                                                color: Colors.white),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
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
