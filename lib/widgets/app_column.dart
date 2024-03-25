import 'package:flutter/material.dart';
import 'package:ui_trial/utils/dimensions.dart';
import 'package:ui_trial/widgets/big_text.dart';
import 'package:ui_trial/widgets/icons_and_text.dart';
import 'package:ui_trial/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) :super(key: key );

  @override
  Widget build(BuildContext context) {
    return  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: text,size: Dimensions.font26,),
                    SizedBox(height: Dimensions.height10),
                    Row(
                      children: [
                        Expanded(
                          child: IconAndText(
                              icon: Icons.timelapse_sharp,
                              text: "32min",
                              iconColor: Color.fromARGB(255, 45, 56, 95),),
                        ),
                        Expanded(
                          child: IconAndText(
                              icon: Icons.speed,
                              text: "easy",
                              iconColor: Color.fromARGB(255, 45, 56, 95)),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height15),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 54, 66, 111),
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1287"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "comments"),
                      ],
                    ),
                  ],);
  }
}