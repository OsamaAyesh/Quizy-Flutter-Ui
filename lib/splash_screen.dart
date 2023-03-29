import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, "/out_screen");
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0XFF6A5AE0),
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Image.asset(
                "images/2.png",
                width: width,
                height: height,
                fit: BoxFit.fitWidth,
              ),
              Center(
                child: Image.asset(
                  "images/1.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
