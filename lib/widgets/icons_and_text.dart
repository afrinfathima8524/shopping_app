import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_trial/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
final IconData icon;
final String text;
final Color color;
final Color iconColor;

  const IconAndText({Key? key,
  required this.icon,
  required this.text,
  this.color =const  Color.fromARGB(255, 54, 66, 111),
  required this.iconColor}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text: text,color: color,),
      ],
    );
  }
}