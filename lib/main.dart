import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ui_trial/pages/home/main_food_page.dart';
import 'package:ui_trial/pages/home/recipies/popular_recipies.dart';
import 'package:ui_trial/pages/home/recipies/recommended_recipies.dart';
import 'package:ui_trial/helper/dependencies.dart' as dep;

import 'pages/home/food_page_body.dart';
// import '../pages/home/main_food_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MainFoodPage(),
    );
  }
}
