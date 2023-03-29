import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quezy/home_screen/create_screens/create_screen.dart';
import 'package:quezy/home_screen/home_screen1.dart';
import 'package:quezy/home_screen/leaderboard_screen.dart';
import 'package:quezy/home_screen/profile_screen.dart';
import 'package:quezy/home_screen/search%20_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen1();
  final List<Widget> screens = [
    const HomeScreen1(),
    const SearchScreen(),
    const LeaderboardScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset : false,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: const CreateScreen(quiz: "Choose quiz category",)));
        },
        backgroundColor: const Color(0XFF6A5AE0),
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SingleChildScrollView(
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          elevation: 10,
          notchMargin: 12,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = const HomeScreen1();
                            currentTab = 0;
                          },
                        );
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 0
                                ? Colors.black
                                : const Color(0XFFCCCCCC),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = const SearchScreen();
                            currentTab = 1;
                          },
                        );
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: currentTab == 1
                                ? Colors.black
                                : const Color(0XFFCCCCCC),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = const LeaderboardScreen();
                            currentTab = 2;
                          },
                        );
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.leaderboard_outlined,
                            color: currentTab == 2
                                ? Colors.black
                                : const Color(0XFFCCCCCC),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = const ProfileScreen();
                            currentTab = 3;
                          },
                        );
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: currentTab == 3
                                ? Colors.black
                                : const Color(0XFFCCCCCC),
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
      ),
    );
  }
}
