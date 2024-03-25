import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food_page_body.dart';
import 'package:ui_trial/utils/dimensions.dart';
import 'package:ui_trial/widgets/big_text.dart';
import 'package:ui_trial/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          child: Container(
            margin: EdgeInsets.only(top:Dimensions.height45,bottom: Dimensions.height15),
            padding: EdgeInsets.only(left:Dimensions.widthPadding,right: Dimensions.widthPadding,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                   BigText(text: "India",color: Color.fromARGB(255, 45, 56, 95)),
                   Row(
                     children: [
                       SmallText(text: "Tamilnadu",color: Colors.black54,),
                       Icon(Icons.arrow_drop_down)
                     ],
                   )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search,color: Colors.white,size:Dimensions.iconSize24,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),color: Color.fromARGB(255, 54, 66, 111)),
                  ),
                ),
              ],
            ),
          ),
              ),
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          )
        ],
      ),
    );
  }
}