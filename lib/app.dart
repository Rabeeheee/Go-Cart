import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/bindings/genaral_bindings.dart';
import 'package:go_cart/routes/app_routes.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/themes/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GenaralBindings(),
      getPages: AppRoutes.pages,
      home: Scaffold(backgroundColor: TColors.primaryColor,body: Center(child: CircularProgressIndicator(color: Colors.white ,),),),
      debugShowCheckedModeBanner: false,  
    );
  }
}