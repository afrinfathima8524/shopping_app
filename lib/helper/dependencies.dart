import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:food_delivery/controllers/popular_recipies_controller.dart';
import 'package:food_delivery/controllers/recommended.dart';
import 'package:food_delivery/helper/data/api/api_client.dart';
import 'package:food_delivery/helper/data/api/repository/popular_recipie_repo.dart';
import 'package:food_delivery/helper/data/api/repository/recommened_repo.dart';
import 'package:food_delivery/utils/app_constants.dart';

Future<void> init()async{
  // api
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.Base_Url));
  // repo
  Get.lazyPut(() => PopularRecipiesRepo(apiClient:Get.find()));
  Get.lazyPut(() => RecommendedRecipiesRepo(apiClient:Get.find()));
  // controller
    Get.lazyPut(() => PopularRecipiesController(popularRecipiesRepo: Get.find()));
    Get.lazyPut(() => RecommendedRecipiesController(recommendedRecipiesRepo: Get.find()));

}