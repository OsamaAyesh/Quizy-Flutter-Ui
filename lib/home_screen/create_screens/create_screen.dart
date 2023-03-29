import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/home_screen/create_screens/addq_screen.dart';
import 'package:quezy/home_screen/create_screens/choose_category_screen.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key, required this.quiz}) : super(key: key);
  final String quiz;

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0XFF6A5AE0),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
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
                      Container(
                        height: 200.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                          color: const Color(0XFFEFEEFC),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/imageadd.png",
                                height: 64.h,
                                width: 64.w,
                              ),
                              Text(
                                "Add Cover Image",
                                style: GoogleFonts.rubik(
                                  color: const Color(0XFF6A5AE0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "Title",
                            style: GoogleFonts.rubik(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter quiz title",
                            hintStyle: GoogleFonts.rubik(
                              color: const Color(0XFF858494),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Color(0XFFEFEEFC), width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Color(0XFFEFEEFC), width: 2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "Quiz Category",
                            style: GoogleFonts.rubik(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: ChooseCategoryScreen(
                                    quiz: widget.quiz,
                                  )));
                        },
                        child: Container(
                          height: 56.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2, color: const Color(0XFFEFEEFC)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.w,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  widget.quiz,
                                  style: GoogleFonts.rubik(
                                    color: const Color(0XFF858494),
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                const Icon(
                                  Icons.navigate_next,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "Description",
                            style: GoogleFonts.rubik(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: TextField(
                          minLines: 3,
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Enter quiz description",
                            hintStyle: GoogleFonts.rubik(
                              color: const Color(0XFF858494),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Color(0XFFEFEEFC), width: 2,),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Color(0XFFEFEEFC), width: 2,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: const AddQScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(327.w, 56.h),
                            backgroundColor: const Color(0XFF6A5AE0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
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
