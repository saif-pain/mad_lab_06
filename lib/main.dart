import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mad_lab_06/app_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: Drawer(
              child: ListView(
                children: [
                  Container(
                    height: 70,
                    child: DrawerHeader(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(AntDesign.github_fill),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.close),
                        )
                      ],
                    )),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing:
                        ElevatedButton(onPressed: () {}, child: Text("HI")),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.circle_outlined),
                    title: Text("Issues"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.gif_box_outlined),
                    title: Text("Request"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            endDrawer: Drawer(),
            appBar: AppBar(
              title: Text("Advanced UI - lAB 06"),
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
            body: AppBody(),
            ));
  }
}
