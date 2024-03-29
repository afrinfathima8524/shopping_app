import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:food_delivery/helper/data/api/repository/popular_recipie_repo.dart';
import 'package:food_delivery/models/popular_recipies_module.dart';

class PopularRecipiesController extends GetxController{
final PopularRecipiesRepo popularRecipiesRepo;
PopularRecipiesController({required this.popularRecipiesRepo});
List<dynamic> _popularRecipieList=[];
List<dynamic> get popularRecipieList =>_popularRecipieList;

Future<void> getPopularRecipiesList()async{
 Response response = await popularRecipiesRepo.getPopularRecipies();
 if(response.statusCode==200){
  _popularRecipieList=[];
  _popularRecipieList.addAll(Product.fromJson(response.body).products);
  update();
 }else{
    throw("not sble to load the data");
 }
}
}
