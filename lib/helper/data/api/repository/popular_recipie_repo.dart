import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ui_trial/helper/data/api/api_client.dart';

class PopularRecipiesRepo extends GetxService{
 final ApiClient apiClient;
 PopularRecipiesRepo({required this.apiClient});
 Future<Response> getPopularRecipies()async{
  return await apiClient.getData("end point url");
 }
} 