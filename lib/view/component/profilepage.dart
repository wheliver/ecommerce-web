import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_product_web_page/pages/widgets/desktop_appbar.dart';
import 'package:responsive_product_web_page/pages/widgets/mobile_appbar.dart';
import 'package:responsive_product_web_page/ui_helper.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDrawerOpened = false;

  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/backk.png'),
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.08),
                      BlendMode.modulate,
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Visibility(
                      visible: screenType == ScreenType.desktop,
                      replacement: MobileAppBar(
                          onPressed:
                              _isDrawerOpened ? _closeDrawer : _openDrawer,
                          isDrawerOpened: _isDrawerOpened),
                      child: const DesktopAppBar()),
                  // Profile image
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.15,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.30),
                      child: Image.asset('assets/images/profile4.png',
                          height: MediaQuery.of(context).size.width * 0.30,
                          width: MediaQuery.of(context).size.width * 0.30,
                          fit: BoxFit.cover),
                    ),
                  ),

                  SizedBox(height: 16.0),
                  // Name
                  Text(
                    'John Doe',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  // Email address
                  Text(
                    'johndoe@example.com',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  // List of orders
                ],
              ),
            ),
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
