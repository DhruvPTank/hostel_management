import 'package:flutter/material.dart';
import 'package:screen_devision/apcInfo.dart';
import 'package:screen_devision/choice.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

import 'package:screen_devision/components/login.dart';

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  late VideoPlayerController controller;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset("assets/videos/loding.mp4")
      ..initialize().then((value) => controller.play()
          // {
          //   setState(() {});
          // }
          );
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => basicDetails())));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child:Column(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                    ),
                  ),
                  // TextButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         controller.initialize().then((value) => controller.play());
                  //
                  //             // ? controller.pause()
                  //             // : controller.play();
                  //       });
                  //     },
                  //     child: Text(
                  //       controller.value.isPlaying ? 'Pause' : 'Play',
                  //       style: TextStyle(color: Colors.black),
                  //     ))
                ],
              )
            );
  }
}

