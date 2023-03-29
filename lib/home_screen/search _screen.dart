import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  // final Widget container  = C1(width: width, height: height);
  //
  // late Widget container2;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              setState(() {
                if (selected) {
                  selected = false;
                }
              });
            },
            icon: const Icon(Icons.arrow_back)),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Discover",
          style: GoogleFonts.rubik(
            color: const Color(0XFFFFFFFF),
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: TextField(
                onTap: () {
                  setState(() {
                    if (selected == false) {
                      selected = true;
                    }
                  });

                },
                decoration: InputDecoration(
                  fillColor: const Color(0XFF5B4DC3),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Quiz, categories, or friends",
                  hintStyle: GoogleFonts.rubik(
                      color: const Color(0XFFE6E6E6),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0XFF5B4DC3))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0XFF5B4DC3))),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            selected == false
                ? CF1(
                    width: width,
                    height: height,
                  )
                : CF2(
                    height: height,
                    width: width,
                  ),
          ],
        ),
      ),
    );
  }
}

class CF1 extends StatelessWidget {
  const CF1({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: Container(
            width: width,
            height: height * 0.23,
            decoration: BoxDecoration(
              color: const Color(0XFFFFE0E6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    const Expanded(child: SizedBox()),
                    Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          ),
                          child: Image.asset("images/14.png"),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: const Color(0XFFFF8FA2),
                          minimumSize: Size(width * 0.12, height * 0.04),
                        ),
                        child: Text(
                          "TOP PICKS",
                          style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Text(
                        "Travel Trivia Quiz",
                        style: GoogleFonts.rubik(
                          color: const Color(0XFF660012),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "images/15.png",
                            width: width * 0.04,
                            height: height * 0.04,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Music • 5 Quizzes",
                            style: GoogleFonts.rubik(
                              color: const Color(0XFF660012),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
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
        ),
        SizedBox(
          height: height * 0.03,
        ),
        GestureDetector(
          onTap: () {},
          child: AnimatedContainer(
            duration: const Duration(seconds: 4),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Top rank of the week",
                        style: GoogleFonts.rubik(
                          color: const Color(0XFF0C092A),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        child: Container(
                          width: width,
                          height: height * 0.12,
                          decoration: BoxDecoration(
                            color: const Color(0XFF6A5AE0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  const Expanded(child: SizedBox()),
                                  Row(
                                    children: [
                                      const Expanded(child: SizedBox()),
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                        ),
                                        child: Image.asset("images/16.png"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: width * 0.04,
                                    ),
                                    Image.asset("images/17.png"),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Image.asset("images/18.png"),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Brandon Matrovs",
                                          style: GoogleFonts.rubik(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.015,
                                        ),
                                        Text(
                                          "124 points",
                                          style: GoogleFonts.rubik(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            Image.asset("images/19.png"),
                            SizedBox(
                              width: width * 0.06,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.rubik(
                          color: const Color(0XFF0C092A),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.18,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          color: const Color(0XFF88E2CE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/20.png",
                              width: width * 0.2,
                              height: height * 0.11,
                            ),
                            Text(
                              "Math",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "21 Quizzes",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.18,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          color: const Color(0XFF9087E5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/21.png",
                              width: width * 0.2,
                              height: height * 0.11,
                            ),
                            Text(
                              "Science",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "12 Quizzes",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.18,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          color: const Color(0XFF9087E5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/21.png",
                              width: width * 0.2,
                              height: height * 0.11,
                            ),
                            Text(
                              "Science",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "12 Quizzes",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.18,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          color: const Color(0XFF88E2CE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/20.png",
                              width: width * 0.2,
                              height: height * 0.11,
                            ),
                            Text(
                              "Math",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "21 Quizzes",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CF2 extends StatefulWidget {
  const CF2({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<CF2> createState() => _CF2State();
}

class _CF2State extends State<CF2> with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.height,
          width: widget.width,
          margin: EdgeInsets.symmetric(horizontal: widget.width * 0.03),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              TabBar(
                controller: tabController,
                labelColor: const Color(0XFF6A5AE0),
                unselectedLabelColor: const Color(0XFF858494),
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 5.0,
                    color: Color(0XFF6A5AE0),
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 45, vertical: -15),
                ),
                // ),
                tabs: [
                  Text(
                    "Top",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Quiz",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Categories",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    "Friends",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  Tab(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "Recent Searches",
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
                                  "Clear all",
                                  style: GoogleFonts.rubik(
                                      color: const Color(0XFF6A5AE0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: widget.width,
                            height: widget.height * 0.1,
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
                                  height: widget.height * 0.0999,
                                  width: widget.width * 0.22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: widget.height * 0.01,
                                    ),
                                    Text(
                                      "Integers Quiz",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF0C092A),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: widget.height * 0.01,
                                    ),
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
                                const Icon(
                                  Icons.navigate_next_outlined,
                                  color: Color(0XFF6A5AE0),
                                  size: 36,
                                ),
                                SizedBox(width: widget.width * 0.02),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: widget.width,
                            height: widget.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: const Color(0XFFEFEEFC), width: 2),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/22.png",
                                  height: widget.height * 0.0999,
                                  width: widget.width * 0.22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: widget.height * 0.01,
                                    ),
                                    Text(
                                      "Matrices Quiz",
                                      style: GoogleFonts.rubik(
                                        color: const Color(0XFF0C092A),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: widget.height * 0.01,
                                    ),
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
                                const Icon(
                                  Icons.navigate_next_outlined,
                                  color: Color(0XFF6A5AE0),
                                  size: 36,
                                ),
                                SizedBox(width: widget.width * 0.02),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Text("data"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Text("data"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Text("data"),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}

// class C2 extends StatelessWidget {
//   const C2({
//     Key? key,
//     required this.width,
//     required this.height,
//   }) : super(key: key);
//
//   final double width;
//   final double height;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: width * 0.07),
//       child: C3(width: width, height: height),
//     );
//   }
// }
//
// class C3 extends StatelessWidget {
//   const C3({
//     Key? key,
//     required this.width,
//     required this.height,
//   }) : super(key: key);
//
//   final double width;
//   final double height;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height * 0.23,
//       decoration: BoxDecoration(
//         color: const Color(0XFFFFE0E6),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Stack(
//         children: [
//           Column(
//             children: [
//               const Expanded(child: SizedBox()),
//               Row(
//                 children: [
//                   const Expanded(child: SizedBox()),
//                   ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                       bottomRight: Radius.circular(20),
//                     ),
//                     child: Image.asset("images/14.png"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     backgroundColor: const Color(0XFFFF8FA2),
//                     minimumSize: Size(width * 0.12, height * 0.04),
//                   ),
//                   child: Text(
//                     "TOP PICKS",
//                     style: GoogleFonts.rubik(
//                       color: Colors.white,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 const Expanded(child: SizedBox()),
//                 Text(
//                   "Travel Trivia Quiz",
//                   style: GoogleFonts.rubik(
//                     color: const Color(0XFF660012),
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Image.asset(
//                       "images/15.png",
//                       width: width * 0.04,
//                       height: height * 0.04,
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       "Music • 5 Quizzes",
//                       style: GoogleFonts.rubik(
//                         color: const Color(0XFF660012),
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class C1 extends StatelessWidget {
//   const C1({
//     Key? key,
//     required this.width,
//     required this.height,
//   }) : super(key: key);
//
//   final double width;
//   final double height;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: AnimatedContainer(
//         duration: const Duration(seconds: 4),
//         width: width,
//         height: height,
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(20),
//             topLeft: Radius.circular(20),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     "Top rank of the week",
//                     style: GoogleFonts.rubik(
//                       color: const Color(0XFF0C092A),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   const Expanded(child: SizedBox()),
//                 ],
//               ),
//               SizedBox(
//                 height: height * 0.03,
//               ),
//               Stack(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: width * 0.02),
//                     child: Container(
//                       width: width,
//                       height: height * 0.12,
//                       decoration: BoxDecoration(
//                         color: const Color(0XFF6A5AE0),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Stack(
//                         children: [
//                           Column(
//                             children: [
//                               const Expanded(child: SizedBox()),
//                               Row(
//                                 children: [
//                                   const Expanded(child: SizedBox()),
//                                   ClipRRect(
//                                     borderRadius: const BorderRadius.only(
//                                       bottomRight: Radius.circular(20),
//                                     ),
//                                     child: Image.asset("images/16.png"),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Center(
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   width: width * 0.04,
//                                 ),
//                                 Image.asset("images/17.png"),
//                                 SizedBox(
//                                   width: width * 0.02,
//                                 ),
//                                 Image.asset("images/18.png"),
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       "Brandon Matrovs",
//                                       style: GoogleFonts.rubik(
//                                         color: Colors.white,
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: height * 0.015,
//                                     ),
//                                     Text(
//                                       "124 points",
//                                       style: GoogleFonts.rubik(
//                                         color: Colors.white,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10),
//                     child: Row(
//                       children: [
//                         const Expanded(child: SizedBox()),
//                         Image.asset("images/19.png"),
//                         SizedBox(
//                           width: width * 0.06,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: height * 0.03,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Categories",
//                     style: GoogleFonts.rubik(
//                       color: const Color(0XFF0C092A),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   const Expanded(child: SizedBox()),
//                 ],
//               ),
//               SizedBox(
//                 height: height * 0.02,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     height: height * 0.18,
//                     width: width * 0.4,
//                     decoration: BoxDecoration(
//                       color: const Color(0XFF88E2CE),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "images/20.png",
//                           width: width * 0.2,
//                           height: height * 0.11,
//                         ),
//                         Text(
//                           "Math",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           "21 Quizzes",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: height * 0.18,
//                     width: width * 0.4,
//                     decoration: BoxDecoration(
//                       color: const Color(0XFF9087E5),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "images/21.png",
//                           width: width * 0.2,
//                           height: height * 0.11,
//                         ),
//                         Text(
//                           "Science",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           "12 Quizzes",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: height * 0.02,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     height: height * 0.18,
//                     width: width * 0.4,
//                     decoration: BoxDecoration(
//                       color: const Color(0XFF9087E5),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "images/21.png",
//                           width: width * 0.2,
//                           height: height * 0.11,
//                         ),
//                         Text(
//                           "Science",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           "12 Quizzes",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: height * 0.18,
//                     width: width * 0.4,
//                     decoration: BoxDecoration(
//                       color: const Color(0XFF88E2CE),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "images/20.png",
//                           width: width * 0.2,
//                           height: height * 0.11,
//                         ),
//                         Text(
//                           "Math",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           "21 Quizzes",
//                           style: GoogleFonts.rubik(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
