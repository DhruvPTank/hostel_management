import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class first_division extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(child: Container(color: Colors.orange,),),
                Expanded(child: Container(color: Colors.pink,)),
                Expanded(child: Container(color: Colors.green,)),
                Expanded(child: Container(color: Colors.cyanAccent,))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(color: Colors.black,),flex: 2,),
                Expanded(child: Column(
                  children: [

                    Expanded(child: Container(color: Colors.amber,)),
                    Expanded(child: Container(color: Colors.cyan,))

                  ],
                )),
                Expanded(child: Column(
                  children: [

                    Expanded(child: Container(color: Colors.blue,)),
                    Expanded(child: Container(color: Colors.red,))

                  ],
                )),
                Expanded(child: Container(color: Colors.yellow,),flex:2,)
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Column(
                  children: [

                    Expanded(child: Container(color: Colors.amber,)),
                    Expanded(child: Container(color: Colors.cyan,))

                  ],
                )),
                Expanded(child: Column(
                  children: [

                    Expanded(child:Row(
                      children: [
                        Expanded(child: Column(
                          children: [

                            Expanded(child: Container(color: Colors.black38,)),
                            Expanded(child: Container(color: Colors.white70,))

                          ],
                        )),
                        Expanded(child: Column(
                          children: [

                            Expanded(child: Container(color: Colors.white70,)),
                            Expanded(child: Container(color: Colors.black38,))

                          ],
                        ))
                      ],
                    )),
                    Expanded(child: Container(color: Colors.red,))

                  ],
                )),
                Expanded(child: Container(color: Colors.green,),flex:2,),
                Expanded(child: Column(
                  children: [

                    Expanded(child: Container(color: Colors.amber,)),
                    Expanded(child:Row(
                      children: [
                        Expanded(child: Column(
                          children: [

                            Expanded(child: Container(color: Colors.white70,)),
                            Expanded(child: Container(color: Colors.black38,))

                          ],
                        )),
                        Expanded(child: Column(
                          children: [

                            Expanded(child: Container(color: Colors.black38,)),
                            Expanded(child: Container(color: Colors.white70,))

                          ],
                        ))
                      ],
                    ))

                  ],
                )),
                Expanded(child: Column(
                  children: [

                    Expanded(child: Container(color: Colors.blue,)),
                    Expanded(child: Container(color: Colors.red,))

                  ],
                )),
              ],
            ))

          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}
