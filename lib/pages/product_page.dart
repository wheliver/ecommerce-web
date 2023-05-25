import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/constant/colors.dart';
import 'package:responsive_product_web_page/pages/widgets/app_drawer.dart';
import 'package:responsive_product_web_page/pages/widgets/image_slider.dart';
import 'package:responsive_product_web_page/ui_helper.dart';

import 'widgets/desktop_appbar.dart';

import 'widgets/mobile_appbar.dart';
import 'widgets/product_options.dart';
import 'widgets/similar_products.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _isDrawerOpened = false;

  final verticalController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    return Scaffold(
      drawer: screenType == ScreenType.mobile ? const Drawer() : null,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/backk.png'),
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.1),
                      BlendMode.modulate,
                    ))),
          ),
          Scrollbar(
            controller: verticalController,
            thumbVisibility: true,
            child: SingleChildScrollView(
                controller: verticalController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Visibility(
                        visible: screenType == ScreenType.desktop,
                        replacement: MobileAppBar(
                            onPressed:
                                _isDrawerOpened ? _closeDrawer : _openDrawer,
                            isDrawerOpened: _isDrawerOpened),
                        child: const DesktopAppBar()),
                    Visibility(
                        visible:
                            _isDrawerOpened && screenType == ScreenType.mobile,
                        child: const AppDrawer()),
                    const SizedBox(
                      height: 40,
                    ),
                    Flex(
                      direction: screenType == ScreenType.desktop
                          ? Axis.horizontal
                          : Axis.vertical,
                      children: [
                        Visibility(
                          visible: screenType == ScreenType.desktop,
                          child: const Spacer(
                            flex: 2,
                          ),
                        ),
                        Expanded(
                          flex: screenType == ScreenType.desktop ? 8 : 0,
                          child: ImageSlider(
                            images: const [
                              "assets/images/chaqueta.jpg",
                              "assets/images/goros.jpg",
                              "assets/images/gororio.jpg",
                              "assets/images/etiqueta.jpg",
                            ],
                            screenType: screenType,
                          ),
                        ),
                        Visibility(
                          visible: screenType == ScreenType.desktop,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                        ),
                        const ProductOptions(),
                        Visibility(
                          visible: screenType == ScreenType.desktop,
                          child: const Spacer(
                            flex: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 73,
                    ),
                    Center(
                      child: Text(
                        "Complete Your Experience".toUpperCase(),
                        style: TextStyle(
                            color: AppColors.black,
                            fontFamily: "Atmosphere",
                            fontSize: 30,
                            wordSpacing:
                                screenType == ScreenType.desktop ? 10 : 2,
                            letterSpacing:
                                screenType == ScreenType.desktop ? 10 : 4,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Divider(
                            color: Colors.black54,
                          ),
                        ),
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SimilarProducts(),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  void _openDrawer() {
    setState(() {
      _isDrawerOpened = true;
    });
  }

  void _closeDrawer() {
    setState(() {
      _isDrawerOpened = false;
    });
  }
}
