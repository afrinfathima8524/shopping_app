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
  static String getPopularRecipie()=>'$PopularRecipie';
  static String getRecommendedRecipie()=>'$recommendedRecipie';

  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=>MainFoodPage()),
    GetPage(name: PopularRecipie, page: (){
      return PopularRecipies();
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: recommendedRecipie, page: (){
      return RecommendedRecipies();
    },
    transition: Transition.fadeIn
    ),
  ];
}