// import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/controllers/popular_recipies_controller.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';

class PopularRecipies extends StatelessWidget {
  int pageId;
  PopularRecipies({Key? key, required this.pageId}) : super(key: key);

  get isLoaded => null;

  @override
  Widget build(BuildContext context) {
    var recipies =
        Get.find<PopularRecipiesController>().popularRecipieList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          AppConstants.Base_Url+AppConstants.Upload_Uri+recipies.img!),
                      fit: BoxFit.cover),
                ),
              )),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.widthPadding,
            right: Dimensions.widthPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => MainFoodPage());
                    },
                    child: AppIcon(icon: Icons.arrow_back_ios)),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.widthPadding,
                right: Dimensions.widthPadding,
                top: Dimensions.heightPadding,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: recipies.name!),
                  SizedBox(
                    height: Dimensions.heightPadding,
                  ),
                  BigText(text: "Introduction"),
                  SizedBox(
                    height: Dimensions.heightPadding,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          child: ExpandableText(text: recipies.description!)))
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.widthPadding,
          right: Dimensions.widthPadding,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 54, 66, 111),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.heightPadding,
                bottom: Dimensions.heightPadding,
                left: Dimensions.widthPadding,
                right: Dimensions.widthPadding,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: const Color.fromARGB(255, 54, 66, 111),
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: const Color.fromARGB(255, 54, 66, 111),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.heightPadding,
                bottom: Dimensions.heightPadding,
                left: Dimensions.widthPadding,
                right: Dimensions.widthPadding,
              ),
              child: BigText(text: "\$ ${recipies.price!} | Add To Cart", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color.fromARGB(255, 121, 126, 143),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
