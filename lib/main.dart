import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
            appBar: AppBar(
              title: Text("Advanced UI - lAB 06"),
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                CachedNetworkImage(
                  imageUrl: "https://cdn.pixabay.com/photo/2019/04/06/06/44/astronaut-4106766_1280.jpg",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                CachedNetworkImage(
        imageUrl: "https://t4.ftcdn.net/jpg/09/45/20/97/360_F_945209778_QNLukvfcQL0kkcClajN1FYCHb12pKUfv.jpg",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                CachedNetworkImage(
        imageUrl: "https://cdn.pixabay.com/photo/2018/10/09/10/01/architecture-3734552_640.jpg",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ),
                Image(
                    image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/026/657/132/small_2x/ai-generated-ai-generative-desert-canyon-mountain-rock-hill-nature-adventure-landscape-travel-explore-lake-tree-vacation-hiking-vibe-sunset-graphic-art-photo.jpg')),
              ]),
            )));
  }
}
