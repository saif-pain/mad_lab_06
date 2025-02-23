import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  int currentIndex = 0;
  final List<Widget> pages = [Text("Home"), Text("Profile")];

  void onTapMethod(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: pages[currentIndex]),
        bottomNavigationBar: BottomNavigationBar(onTap: onTapMethod,
        currentIndex: currentIndex,
         items: [
          BottomNavigationBarItem(
            icon: Icon(AntDesign.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(AntDesign.profile_fill), label: "Profile")
        ]));
  }
}
