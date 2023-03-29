import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quezy/auth_screens/login_screens/login_screen.dart';
import 'package:quezy/auth_screens/login_signup_screen.dart';
import 'package:quezy/auth_screens/signup_screens/signup_screen.dart';
import 'package:quezy/home_screen/home_screen.dart';
import 'package:quezy/out_screens/out_screen.dart';
import 'package:quezy/splash_screen.dart';

import 'auth_screens/login_screens/reset_password_screen1.dart';
import 'auth_screens/login_screens/reset_password_screen2.dart';
import 'auth_screens/signup_screens/signup_second_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,i) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0XFF6A5AE0),
          ),
          initialRoute: "/splash_screen",
          routes: {
            "/splash_screen": (context) => const SplashScreen(),
            "/out_screen": (context) => const OutScreen(),
            '/signup_screen': (context) => const SignUpScreen(),
            '/signup_second_screen': (context) => const SignupSecondScreen(),
            '/login_Screen': (context) => const LoginScreen(),
            '/login_signup_screen': (context) => const LoginSignupScreen(),
            '/reset_password_screen1': (context) => const ResetPassword1(),
            '/reset_password_screen2': (context) => const ResetPassword2(),
            '/home_screen': (context) => const HomeScreen(),

          },

        );
      } );
  }
}
