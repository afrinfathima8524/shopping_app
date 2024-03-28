import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';

class RecommendedRecipies extends StatelessWidget {
  const RecommendedRecipies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.getInitial());
                },
                child: AppIcon(icon: Icons.close)),
              AppIcon(icon: Icons.shopping_cart_outlined),
            ],),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(text: "blueberry cake",size: Dimensions.font26,),),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                    ),
                ),
              ),
              ),
            pinned: true,
            backgroundColor: const  Color.fromARGB(255, 54, 66, 111),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/Cadbury-Chocolate-Blueberry-Cake-thumb.webp",
              width: double.maxFinite,
              fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.widthPadding,right: Dimensions.widthPadding,),
                  child:  ExpandableText(text: "Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.  eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.  eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.  eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center. Keep an eye on how long you microwave the cake because overcooking can result in a dry texture, and you won't get that gooey center.")),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimensions.widthPadding*2.5,right: Dimensions.widthPadding*2.5,top: Dimensions.height10,bottom: Dimensions.height10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,backgorundColor: const  Color.fromARGB(255, 54, 66, 111),iconColor: Colors.white,),
                  BigText(text: " \$12.88 "+" X "+" 0 ",size: Dimensions.font26,),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,backgorundColor: const  Color.fromARGB(255, 54, 66, 111),iconColor: Colors.white,),
              ],
            ),
          ),
          Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.widthPadding,right: Dimensions.widthPadding,),
        decoration: BoxDecoration(
          color: const  Color.fromARGB(255, 54, 66, 111),
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20*2),
          topRight: Radius.circular(Dimensions.radius20*2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.heightPadding,bottom: Dimensions.heightPadding,left: Dimensions.widthPadding,right: Dimensions.widthPadding,),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white),
              child: 
                Icon(Icons.favorite,color: const  Color.fromARGB(255, 54, 66, 111),), 
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.heightPadding,bottom: Dimensions.heightPadding,left: Dimensions.widthPadding,right: Dimensions.widthPadding,),
              child: BigText(text: "\$10 | Add To Cart",color:Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color:Color.fromARGB(255, 121, 126, 143),
              ),
            ),
           ],
        ),
      ),
        ],
      ),
    );
  }
}