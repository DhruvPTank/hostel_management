import 'package:flutter/cupertino.dart';

class scroll_images extends StatelessWidget {
  const scroll_images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        image: DecorationImage(
          image: AssetImage("assets/images/mehulSir.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
