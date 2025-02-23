import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Icon(AntDesign.home_outline),
        label: "Home",
      ),
      BottomNavigationBarItem(
          icon: Icon(AntDesign.profile_fill), label: "Profile")
    ]));
  }
}
