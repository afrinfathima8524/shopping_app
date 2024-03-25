import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:ui_trial/controllers/popular_recipies_controller.dart';
import 'package:ui_trial/helper/data/api/api_client.dart';
import 'package:ui_trial/helper/data/api/repository/popular_recipie_repo.dart';

Future<void> init()async{
  // api
  Get.lazyPut(() => ApiClient(appBaseUrl: "appBaseUrl"));
  // repo
  Get.lazyPut(() => PopularRecipiesRepo(apiClient:Get.find()));
  // controller
    Get.lazyPut(() => PopularRecipiesController(popularRecipiesRepo: Get.find()));

}