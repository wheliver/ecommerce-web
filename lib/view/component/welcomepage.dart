import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/pages/widgets/desktop_appbar.dart';
import 'package:responsive_product_web_page/pages/widgets/lade.dart';
import 'package:responsive_product_web_page/pages/widgets/mobile_appbar.dart';
import 'package:responsive_product_web_page/ui_helper.dart';

class welcomep extends StatefulWidget {
  const welcomep({super.key});

  @override
  State<welcomep> createState() => _welcomepState();
}

class _welcomepState extends State<welcomep> {
  bool _isDrawerOpened = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final screenType = context.screenType();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
            SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // HeaderWidget(size: size),
                  Container(
                    height: size.height * 0.1,
                    child: Visibility(
                        visible: screenType == ScreenType.desktop,
                        replacement: MobileAppBar(
                            onPressed:
                                _isDrawerOpened ? _closeDrawer : _openDrawer,
                            isDrawerOpened: _isDrawerOpened),
                        child: const DesktopAppBar()),
                  ),

                  const SizedBox(
                    height: 3,
                  ),
                  WelcomePage(size: Size(size.width, (size.height * 0.9) - 3))
                ],
              ),
            ),
          ],
        ),
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
