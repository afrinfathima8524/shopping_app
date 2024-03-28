import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:food_delivery/controllers/popular_recipies_controller.dart';
import 'package:food_delivery/controllers/recommended.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/helper/dependencies.dart' as dep;
import 'package:food_delivery/routes/route_helper.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularRecipiesController>().getPopularRecipiesList();
    Get.find<RecommendedRecipiesController>().getRecommendedRecipiesList();
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
