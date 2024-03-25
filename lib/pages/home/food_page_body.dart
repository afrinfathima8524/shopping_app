import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:ui_trial/utils/dimensions.dart';
import 'package:ui_trial/widgets/app_column.dart';
import 'package:ui_trial/widgets/big_text.dart';
import 'package:ui_trial/widgets/icons_and_text.dart';
import 'package:ui_trial/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.PageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        // slider section
        Container(
          height: Dimensions.PageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        // dot bottom
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue.round(),
          decorator: DotsDecorator(
            activeColor: Color.fromARGB(255, 45, 56, 95),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        // popular text
        SizedBox(height: Dimensions.height30,),
        Container(
        margin: EdgeInsets.only(left: Dimensions.width30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BigText(text: "Popular"),
            SizedBox(width: Dimensions.width10,),
            Container(
              margin: EdgeInsets.only(bottom: 3),
              child: BigText(text: ".",color: Colors.black,),
            ),
            SizedBox(width: Dimensions.width10,),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: SmallText(text: "Recipie Pairing"),
            )
          ],
        ),
        ),
       // list of recipies
       ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
         itemCount: 10,
         itemBuilder: (BuildContext context, index) {
           return Container(
             margin: EdgeInsets.only(left: Dimensions.widthPadding,right: Dimensions.widthPadding,bottom: Dimensions.height10),
             child: Row(
              children: [
                // images
                Container(
                  width: Dimensions.listViewImgSize,
                  height: Dimensions.listViewImgSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color:Colors.white38,
                    image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/Oreo-Cheesecake-thumb.webp"),),
                  ),
                ),
                // Text
                Expanded(
                  child: Container(
                    height: Dimensions.listViewTextCountSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                      ),
                      color: Colors.white,
                      ),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: "Nutrisious Brownie in Home"),
                          SizedBox(height: Dimensions.height10,),
                          SmallText(text: "with ingridients in the home"),
                          SizedBox(height: Dimensions.height10,),
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
                        ],
                      ),
                      ),
                  ),
                ),
              ],
             ),
           );
         },
       ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.PageViewContainer,
            margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven ? Color(0xff69c5df) : Color(0xff9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/Cadbury-Chocolate-Blueberry-Cake-thumb.webp"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.PageViewTextContainer,
              margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    )
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimensions.heightPadding,
                  left: Dimensions.width15,
                  right: Dimensions.width15,
                ),
                child: AppColumn(text: "blueberry cake",),),
            ),
          ),
        ],
      ),
    );
  }
}
