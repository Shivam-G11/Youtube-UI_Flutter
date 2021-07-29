import 'package:flutter/material.dart';
import 'package:yt_ui/appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Youtube Theme",
      theme: ThemeData.dark().copyWith(accentColor: Colors.white),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget eachvideo(String asset, String title) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(asset),
            Positioned.fill(
              right: 10,
            bottom: 10,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(5),
                  child: Text("10:01"),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          color: Colors.black,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/logo.jpg"),
            ),
            title: Text("$title",textAlign: TextAlign.start,),
            subtitle: Text("Programming Channel - 1.3k views - 1 hour"),
            trailing: Icon(Icons.more_vert, color: Colors.white,),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottombar,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            eachvideo("assets/thumb0.png", "Working with Databases in Flutter"),
            eachvideo("assets/thumb1.png", "Python Tutorial Applications"),
            eachvideo("assets/thumb2.png", "Dart Concepts in Flutter"),
            eachvideo("assets/thumb3.png", "Java Script Tutorial Applications"),
            eachvideo("assets/thumb4.png", "Internet Sensitive UI built in Flutter"),

          ],
        ),
      ),
    );
  }
}
