import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/pages/home/recipies/popular_recipies.dart';
import 'package:food_delivery/pages/home/recipies/recommended_recipies.dart';

class RouteHelper{
  static const String initial="/";
  static const String PopularRecipie="/popular-recipe";
  static const String recommendedRecipie="/recommended-recipe";

  static String getInitial()=>'$initial';
  static String getPopularRecipie(int pageId)=>'$PopularRecipie?pageId=$pageId';
  static String getRecommendedRecipie(int pageId)=>'$recommendedRecipie?pageId=$pageId';

  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=>MainFoodPage()),
    GetPage(name: PopularRecipie, page: (){
      var pageId=Get.parameters['pageId'];
      return PopularRecipies(pageId:int.parse(pageId!));
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: recommendedRecipie, page: (){
      var pageId=Get.parameters['pageId'];
      return RecommendedRecipies(pageId:int.parse(pageId!));
    },
    transition: Transition.fadeIn
    ),
  ];
}