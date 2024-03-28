import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:food_delivery/helper/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';

class RecommendedRecipiesRepo extends GetxService{
 final ApiClient apiClient;
 RecommendedRecipiesRepo({required this.apiClient});
 Future<Response> getRecommendedRecipies()async{
  return await apiClient.getData(AppConstants.Recommended_Recipe_Uri);
 }
} 