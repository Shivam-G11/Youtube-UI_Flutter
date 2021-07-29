import 'dart:ui';

import 'package:flutter/material.dart';

AppBar topbar = AppBar(
  backgroundColor: Colors.black,
  title: Image.asset("assets/yt_logo_rgb_dark.png",
  fit: BoxFit.cover,
  width: 100,),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(Icons.videocam),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(Icons.search),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(Icons.account_circle),
    ),
  ],
);

Color maincolor = Colors.white;
Color backcolor = Colors.white38;

BottomAppBar bottombar = BottomAppBar(
  color: Colors.black,
  child: Container(
    color: Colors.black,
    height: 50,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Icon(Icons.home, color: maincolor,), Text("Home",style: TextStyle(fontSize: 10),),

          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dehaze, color: backcolor,), Text("Shorts",style: TextStyle(fontSize: 10),),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.subscriptions, color: backcolor,), Text("Subscriptions",style: TextStyle(fontSize: 10),),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.add_circle, color: backcolor,)),Text("Upload",style: TextStyle(fontSize: 10),)
          ],
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.video_library, color: backcolor,), Text("Library",style: TextStyle(fontSize: 10),),
          ],
        ),
      ],
    ),
  ),
);