import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:food_delivery/helper/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';

class PopularRecipiesRepo extends GetxService{
 final ApiClient apiClient;
 PopularRecipiesRepo({required this.apiClient});
 Future<Response> getPopularRecipies()async{
  return await apiClient.getData(AppConstants.Popular_Recipe_Uri);
 }
} 