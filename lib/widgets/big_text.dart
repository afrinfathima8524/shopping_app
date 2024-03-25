import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_trial/utils/dimensions.dart';

class BigText extends StatelessWidget {
 Color? color;
  final String text;
  double size;
  TextOverflow overflow;
 BigText(
      {Key? key,
      this.color = const Color.fromARGB(255, 54, 66, 111),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(color: color,fontWeight: FontWeight.w400,fontSize:size==0? Dimensions.font20:size, fontFamily: 'Roboto'),
    );
  }
}
