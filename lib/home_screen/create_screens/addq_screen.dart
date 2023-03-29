import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/home_screen/create_screens/review_q_screen.dart';

import 'create_screen.dart';

class AddQScreen extends StatefulWidget {
  const AddQScreen({Key? key}) : super(key: key);

  @override
  State<AddQScreen> createState() => _AddQScreenState();
}

class _AddQScreenState extends State<AddQScreen> {
  int index1 = 0;
  String value1 = "";
  String popup = "Multiple Answer";
  String popup1="Multiple Answer";
  String popup2="Multiple Answer";
  String popup3="Multiple Answer";
  String popup4="Multiple Answer";
  String popup5="Multiple Answer";
  String popup6="Multiple Answer";
  String popup7="Multiple Answer";
  late Widget QE,QE1,QE2,QE3,QE4,QE5,QE6,QE7,QE8;
  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    if(popup=="Multiple Answer"){
        QE= Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFFEFEEFC),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 92.h,
                  width: 155.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                      SizedBox(height: 8.h,),
                      Text("Add Answer",style: GoogleFonts.rubik(
                        color:const  Color(0XFF6A5AE0),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const  Color(0XFFEFEEFC),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 92.h,
                  width: 155.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                      SizedBox(height: 8.h,),
                      Text("Add Answer",style: GoogleFonts.rubik(
                        color:const  Color(0XFF6A5AE0),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height:16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFFEFEEFC),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 92.h,
                  width: 155.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                      SizedBox(height: 8.h,),
                      Text("Add Answer",style: GoogleFonts.rubik(
                        color:const  Color(0XFF6A5AE0),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color:const Color(0XFFEFEEFC),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 92.h,
                  width: 155.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                      SizedBox(height: 8.h,),
                      Text("Add Answer",style: GoogleFonts.rubik(
                        color:const  Color(0XFF6A5AE0),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height:16.h,),
          ],
        );
    }else if(popup=="True or False"){
          QE=Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFC4D0FB),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add true Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add false Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),),
                  ],
                ),
              ),
            ],
          );
    }else if(popup=="Type Answer"){
      QE=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );
    }else if(popup=="Checkbox"){
      QE=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );
    } else if(popup=="Voice Note"){
      QE=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup=="poll"){
      QE=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }
    if(popup1=="Multiple Answer"){
      QE1= Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
        ],
      );
    }else if(popup1=="True or False"){
      QE1=Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFC4D0FB),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add true Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const  Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add false Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ],
      );
    }else if(popup1=="Type Answer"){
      QE1=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );
    }else if(popup1=="Checkbox"){
      QE1=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );
    }else if(popup1=="Voice Note"){
      QE1=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup1=="poll"){
      QE1=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }
    if(popup2=="Multiple Answer"){
      QE2= Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
        ],
      );
    }else if(popup2=="True or False"){
      QE2=Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFC4D0FB),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add true Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const  Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add false Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ],
      );
    }else if(popup2=="Type Answer"){QE2=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );}else if(popup2=="Checkbox"){
      QE2=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );
    }else if(popup2=="Voice Note"){
      QE2=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup2=="poll"){
      QE2=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }
    if(popup3=="Multiple Answer"){
      QE3= Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
        ],
      );
    }else if(popup3=="True or False"){
      QE3=Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFC4D0FB),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add true Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const  Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add false Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ],
      );
    }else if(popup3=="Type Answer"){
      QE3=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );
    }else if(popup3=="Checkbox"){
      QE3=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );
    }else if(popup3=="Voice Note"){
      QE3=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup3=="poll"){
      QE3=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }
    if(popup4=="Multiple Answer"){
      QE4= Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
        ],
      );
    }else if(popup4=="True or False"){
      QE4=Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFC4D0FB),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add true Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const  Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add false Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ],
      );
    }else if(popup4=="Type Answer"){
      QE4=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );
    }else if(popup4=="Checkbox"){
      QE4=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );
    }else if(popup4=="Voice Note"){
      QE4=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup4=="poll"){
      QE4=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }
    if(popup5=="Multiple Answer"){
      QE5= Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
        ],
      );
    }else if(popup5=="True or False"){
      QE5=Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFC4D0FB),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add true Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const  Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add false Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ],
      );
    }else if(popup5=="Type Answer"){
      QE5=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );
    }else if(popup5=="Checkbox"){
      QE5=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );}
    else if(popup5=="Voice Note"){
      QE5=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup5=="poll"){
      QE5=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }
    if(popup6=="Multiple Answer"){
      QE6= Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
        ],
      );
    }else if(popup6=="True or False"){
      QE6=Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFC4D0FB),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add true Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const  Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add false Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ],
      );
    }else if(popup6=="Type Answer"){
      QE6=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );
    }else if(popup6=="Checkbox"){
      QE6=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );
    }else if(popup6=="Voice Note"){
      QE6=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup6=="poll"){
      QE6=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }
    if(popup7=="Multiple Answer"){
      QE7= Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const  Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 92.h,
                width: 155.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                    SizedBox(height: 8.h,),
                    Text("Add Answer",style: GoogleFonts.rubik(
                      color:const  Color(0XFF6A5AE0),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:16.h,),
        ],
      );
    }else if(popup7=="True or False"){
      QE7=Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0XFFC4D0FB),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add true Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const  Color(0XFFEFEEFC),
                borderRadius: BorderRadius.circular(20)
            ),
            height: 92.h,
            width: 155.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                SizedBox(height: 8.h,),
                Text("Add false Answer",style: GoogleFonts.rubik(
                  color:const  Color(0XFF6A5AE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ],
      );
    }else if(popup7=="Type Answer"){
      QE7=Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Enter Your Answer",
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
      );
    }else if(popup7=="Checkbox"){
      QE7=Column(
        children: [
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            height: 56.h,
            width: 324.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFFEFEEFC),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEEFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF6A5AE0),
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Text("Add answer",style: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
        ],
      );
    }else if(popup7=="Voice Note"){
      QE7=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Question",
                suffixIcon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30,),
                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    } else if(popup7=="poll"){
      QE7=Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 1",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height:16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add choice answer 2",

                hintStyle: GoogleFonts.rubik(
                  color: const Color(0XFF858494),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Color(0XFFEFEEFC), width: 2),
                ),
              ),
            ),
          ),
        ],
      );
    }

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
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 0 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: index1 == 0
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 1 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "2",
                                  style: index1 == 1
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 2 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "3",
                                  style: index1 == 2
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 3 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "4",
                                  style: index1 == 3
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 4 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "5",
                                  style: index1 == 4
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 5 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "6",
                                  style: index1 == 5
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 6 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "7",
                                  style: index1 == 6
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: index1 == 7 ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "8",
                                  style: index1 == 7
                                      ? GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )
                                      : GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height:570.h ,
                        child: PageView(
                          controller: _pageController,
                          physics: const BouncingScrollPhysics(),
                          onPageChanged: (int index) {
                            setState(() {
                              index1 = index;
                            });
                          },
                          children: [
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                          const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                      const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup1,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup1=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE1

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                      const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup2,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup2=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE2

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                      const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup3,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup3=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE3

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                      const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup4,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup4=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE4

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                      const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup5,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup5=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE5

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                      const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup6,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup6=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE6

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 82.w,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 34.h,
                                                width: 82.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color(0XFFEFEEFC),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset("images/time.png"),
                                                    SizedBox(
                                                      width: 4.w,
                                                    ),
                                                    Text(
                                                      "10 Sec",
                                                      style: GoogleFonts.rubik(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 108.w,
                                        ),
                                        PopupMenuButton(
                                          offset: const Offset(0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          padding:const  EdgeInsets.all(0.0),
                                          child: Container(
                                            height: 34.h,
                                            width: 137.w,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 34.h,
                                                  width: 137.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(15),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                      const Color(0XFFEFEEFC),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        popup7,
                                                        style: GoogleFonts.rubik(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .arrow_drop_down_outlined,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onSelected: (value) {
                                            setState((){
                                              popup7=value;
                                            });


                                          },
                                          itemBuilder: (BuildContext bc) {
                                            return [
                                              const PopupMenuItem(
                                                value: "Multiple Answer",
                                                child:  Text("Multiple Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'True or False',
                                                child: Text("True or False"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Type Answer',
                                                child: Text("Type Answer"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Voice Note',
                                                child: Text("Voice Note"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'Checkbox',
                                                child: Text("Checkbox"),
                                              ),
                                              const PopupMenuItem(
                                                value: 'poll',
                                                child: Text("poll"),
                                              ),
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 16.w,),
                                      Text(
                                        "Add Question",
                                        style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                  SizedBox(height: 8.h,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Question",
                                        hintStyle: GoogleFonts.rubik(
                                          color: const Color(0XFF858494),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color(0XFFEFEEFC), width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:16.h,),
                                  // Column(
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const  Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //       children: [
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color: const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           decoration: BoxDecoration(
                                  //               color:const Color(0XFFEFEEFC),
                                  //               borderRadius: BorderRadius.circular(20)
                                  //           ),
                                  //           height: 92.h,
                                  //           width: 155.w,
                                  //           child: Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             crossAxisAlignment: CrossAxisAlignment.center,
                                  //             children: [
                                  //               const Icon(Icons.add,color: Color(0XFF6A5AE0),),
                                  //               SizedBox(height: 8.h,),
                                  //               Text("Add Answer",style: GoogleFonts.rubik(
                                  //                 color:const  Color(0XFF6A5AE0),
                                  //                 fontWeight: FontWeight.w500,
                                  //                 fontSize: 14,
                                  //               ))
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     SizedBox(height:16.h,),
                                  //   ],
                                  // ),
                                  QE7

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ElevatedButton(
                          onPressed: () {
                            if(index1!=7) {
                              _pageController.nextPage(
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.easeInOutBack);
                            }else{
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const ReviewQScreen(),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(327.w, 56.h),
                            backgroundColor: const Color(0XFF6A5AE0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Add Question",
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
