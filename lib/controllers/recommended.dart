import 'package:get/get.dart';
import 'package:food_delivery/helper/data/api/repository/recommened_repo.dart';
import 'package:food_delivery/models/popular_recipies_module.dart';

class RecommendedRecipiesController extends GetxController{
final RecommendedRecipiesRepo recommendedRecipiesRepo;
RecommendedRecipiesController({required this.recommendedRecipiesRepo});
List<dynamic> _recommendedRecipieList=[];
List<dynamic> get recommendedRecipieList =>_recommendedRecipieList;

Future<void> getRecommendedRecipiesList()async{
 Response response = await recommendedRecipiesRepo.getRecommendedRecipies();
 if(response.statusCode==200){
  _recommendedRecipieList=[];
  _recommendedRecipieList.addAll(Product.fromJson(response.body).products);
  update();
 }else{
    throw("not sble to load the data");
 }
}
}
