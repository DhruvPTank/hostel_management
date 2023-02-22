import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class birthday_card extends StatelessWidget {
  const birthday_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Image.asset(
                "assets/images/bg.jpg",
                fit: BoxFit.cover,
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                Center(
                    child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Happy Birthday',
                    style: TextStyle(
                        fontFamily: 'Schyler',
                        fontSize: 50,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/mehulSir.jpeg'),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80, top: 80),
                      child: Text(
                        'To:-\nFrom:-  ',
                        style: TextStyle(
                          backgroundColor: Colors.amberAccent,
                            color: Colors.redAccent,
                            fontFamily: 'Schyler',
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 80),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            '-It is your special day\n'
                            '-Wishing you the biggest slice of happy\n'
                            '-Hope all your birthday wishes come true',
                            textStyle: const TextStyle(
                              fontSize: 40.0,
                              fontFamily: 'Schyler',
                              fontWeight: FontWeight.bold,
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Text(
//
// style: TextStyle(

// ),
