import 'package:flutter/widgets.dart';
import 'package:food_delivery/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgorundColor;
  final Color iconColor;
  final double Size;
  final double iconSize;
  const AppIcon({Key? key,
  required this.icon,
  this.backgorundColor=const Color(0xfffcf4e4),
  this.iconColor=const Color(0xff756d54),
  this.Size=40,
  this.iconSize=16
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Size,
      height: Size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Size/2),
        color: backgorundColor
      ),
      child: Icon(icon,color: iconColor,size: iconSize,),
    );
  }
}