import 'package:flutter/material.dart';

// ignore: camel_case_types
class second_division extends StatelessWidget {
  const second_division({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Image.asset(
                            "assets/images/project.jpeg",
                            fit: BoxFit.fill,
                          ),
                          padding: EdgeInsets.all(10),
                          color: Colors.red,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Image.asset(
                            "assets/images/project.jpeg",
                            fit: BoxFit.fill,
                          ),
                          padding: EdgeInsets.all(10),
                          color: Colors.green,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image.asset(
                            "assets/images/project.jpeg",
                            fit: BoxFit.fill,
                          ),
                          padding: EdgeInsets.all(10),
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/project.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                      padding: EdgeInsets.all(10),
                                      color: Colors.grey,
                                      margin: EdgeInsets.all(10),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/project.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                      padding: EdgeInsets.all(10),
                                      color: Colors.blueAccent,
                                      margin: EdgeInsets.all(10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/project.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                      padding: EdgeInsets.all(10),
                                      color: Colors.blueGrey,
                                      margin: EdgeInsets.all(10),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/project.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                      padding: EdgeInsets.all(10),
                                      color: Colors.amberAccent,
                                      margin: EdgeInsets.all(10),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                child: Image.asset(
                                  "assets/images/project.jpeg",
                                  fit: BoxFit.cover,
                                ),
                                padding: EdgeInsets.all(10),
                                color: Colors.cyanAccent,
                                margin: EdgeInsets.all(10),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Image.asset(
                                  "assets/images/project.jpeg",
                                  fit: BoxFit.cover,
                                ),
                                padding: EdgeInsets.all(10),
                                color: Colors.pink,
                                margin: EdgeInsets.all(10),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  flex: 2,
                )
              ],
            ))
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
