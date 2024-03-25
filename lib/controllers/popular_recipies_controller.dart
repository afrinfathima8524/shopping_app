import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ui_trial/helper/data/api/repository/popular_recipie_repo.dart';

class PopularRecipiesController extends GetxController{
final PopularRecipiesRepo popularRecipiesRepo;
PopularRecipiesController({required this.popularRecipiesRepo});
List<dynamic> _popularRecipieList=[];
List<dynamic> get popularRecipieList =>_popularRecipieList;

Future<void> getPopularRecipiesList()async{
 Response response = await popularRecipiesRepo.getPopularRecipies();
 if(response.statusCode==200){
  _popularRecipieList=[];
  // _popularRecipieList.addAll( );
  update();
 }else{

 }
}
}
