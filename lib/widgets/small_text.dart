import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmallText extends StatelessWidget {
 Color? color;
  final String text;
  double size;
  double height;
 SmallText(
      {Key? key,
      this.color= const Color.fromARGB(255, 54, 66, 111),
      required this.text,
      this.height=1.2,
      this.size = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color,fontSize: size, fontFamily: 'Roboto',height: height),
    );
  }
}
