import "package:get/get.dart";

// forumla for finding screen width nd height print("widthis"+MediaQuery.of(context).size.width.toString());

class Dimensions{
  static double screenHeight=Get.context!.height;
  static double screenWidth=Get.context!.width;

  static double PageView=screenHeight/2.44;
  static double PageViewContainer=screenHeight/3.55;
  static double PageViewTextContainer=screenHeight/6.52;

  // height for padding and margin
  static double height10=screenHeight/78.3;
  static double height15=screenHeight/52.2;
  static double heightPadding=screenHeight/78.3;
  static double height30=screenHeight/26.1;
  static double height45=screenHeight/17.4;

  // width for padding and margin
  static double width10=screenHeight/78.3;
  static double width15=screenHeight/52.2;
  static double widthPadding=screenHeight/78.3;
  static double width30=screenHeight/26.1;
  static double width45=screenHeight/17.4;

 //font size  
  static double font16=screenHeight/48.93;
  static double font20=screenHeight/39.15;
  static double font26=screenHeight/30.11;

  // radius
  static double radius15=screenHeight/52.2;
  static double radius20=screenHeight/78.3;
  static double radius30=screenHeight/26.1;

  // icon size
    static double iconSize24=screenHeight/32.62;
    static double iconSize16=screenHeight/48.93;

  // list view 
  static double listViewImgSize=screenWidth/3.26;
  static double listViewTextCountSize=screenWidth/3.92;

  // popular recipies
  static double popularFoodImgSize=screenHeight/2.23;

  // bottom nav height
  static double bottomHeightBar=screenHeight/6.52;


}