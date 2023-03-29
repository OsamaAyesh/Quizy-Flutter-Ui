import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/home_screen/home_screen.dart';
import 'package:quezy/home_screen/quiz_screens/quiz10_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Quiz9Screen extends StatefulWidget {
  const Quiz9Screen({Key? key}) : super(key: key);

  @override
  State<Quiz9Screen> createState() => _Quiz9ScreenState();
}

class _Quiz9ScreenState extends State<Quiz9Screen> {
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Good Job!",
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom, child: const HomeScreen()));
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 318.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFF8FA2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Image.asset(
                        "images/win.png",
                        height: 158.h,
                        width: 214.w,
                      ),
                      Text(
                        "You get +80 Quiz Points",
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const Quiz10Screen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFFFB0BE),
                            minimumSize: Size(237.w, 56.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          "Check Correct Answer",
                          style: GoogleFonts.rubik(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  "Accuration Answer",
                  style: GoogleFonts.rubik(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFF858494),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 106.h,
              child: SfCartesianChart(
                // legend: Legend(isVisible: true),
                // tooltipBehavior: _tooltipBehavior,
                backgroundColor: Colors.white,
                enableAxisAnimation: true,
                enableSideBySideSeriesPlacement: true,
                series: <ChartSeries>[
                  LineSeries<SalesData, double>(
                    name: 'Sales',
                    dataSource: _chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                    dataLabelSettings:
                        const DataLabelSettings(isVisible: false),
                    color: const Color(0XFF6A5AE0),

                    // enableTooltip: true
                  )
                ],
                primaryXAxis: NumericAxis(
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  borderColor: const Color(0XFF6A5AE0),
                  axisLine: AxisLine(
                    color: Color(0XFFEFEEFC),
                    width: 2,
                  ),
                ),
                // primaryYAxis: NumericAxis(
                //     labelFormat: '{value}',
                //     labelStyle: GoogleFonts.rubik(
                //       color: Colors.white
                //     ),
                //     numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Accuration Answer",
                      style: GoogleFonts.rubik(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0XFF858494),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "7 questions",
                      style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "COMPLETION",
                      style: GoogleFonts.rubik(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0XFF858494),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "80%",
                      style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 76.w,
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skipped",
                      style: GoogleFonts.rubik(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0XFF858494),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "2",
                      style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const Expanded(child: SizedBox()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INCORRECT ANSWER",
                      style: GoogleFonts.rubik(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0XFF858494),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "1",
                      style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 24.w,
                ),
              ],
            ),
            SizedBox(height:24.h ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: const HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF6A5AE0),
                        minimumSize: Size(255.w, 56.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: Text(
                      "Done",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(56.w, 56.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: const BorderSide(
                      color:  Color(0XFFEFEEFC),
                      width: 3,
                    )
                  )
                ),child:const Icon(Icons.share_rounded,color: Color(0XFF6A5AE0),))
              ],
            )
          ],
        ),
      ),
    );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(1, 25),
      SalesData(2, 12),
      SalesData(3, 24),
      SalesData(4, 18),
      SalesData(5, 30)
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final double year;
  final double sales;
}
