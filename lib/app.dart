import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/constant/colors.dart';
import 'package:responsive_product_web_page/view/component/login.dart';
import 'package:responsive_product_web_page/view/component/profilepage.dart';
import 'package:responsive_product_web_page/view/component/welcomepage.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xbox',
      theme: ThemeData(
          unselectedWidgetColor: AppColors.black,
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                    fontSize: 16, fontFamily: "BarlowCondensed")),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                foregroundColor:
                    MaterialStateProperty.all<Color>(AppColors.black)),
          ),
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: AppColors.green,
              onPrimary: AppColors.white,
              secondary: AppColors.white,
              onSecondary: AppColors.black,
              error: AppColors.red,
              onError: AppColors.white,
              background: AppColors.white,
              onBackground: AppColors.black,
              surface: AppColors.white,
              onSurface: AppColors.black)),
      home: //LoginPage(),
          ProfilePage(),
      //welcomep(),
      //  const ProductPage(),
    );
  }
}
