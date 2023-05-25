import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/constant/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.grey,
      width: double.infinity,
      child: Column(children: [
        TextButton(onPressed: () {}, child: const Text("CLOTHING")),
        TextButton(onPressed: () {}, child: const Text("ACCESSORIES")),
        TextButton(onPressed: () {}, child: const Text("CARE AND MAINTENANCE")),
        TextButton(onPressed: () {}, child: const Text("FOOTWEAR")),
        TextButton(
            onPressed: () {}, child: const Text("STYLE AND FASHION TIPS")),
      ]),
    );
  }
}
