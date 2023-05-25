import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/constant/colors.dart';

import 'app_logo.dart';

class DesktopAppBar extends StatefulWidget {
  const DesktopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopAppBar> createState() => _DesktopAppBarState();
}

class _DesktopAppBarState extends State<DesktopAppBar> {
  @override
  Widget build(BuildContext context) {
    final remainingWidth = MediaQuery.of(context).size.width - 611;
    const viewsCounts = 5;
    bool searcht = true;
    bool searcht2 = !searcht;
    TextEditingController searchController = TextEditingController();
    final numberOfVisibleViews = (remainingWidth ~/ 120).clamp(0, viewsCounts);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
      child: Row(
        children: [
          const AppLogo(),
          const Spacer(
            flex: 1,
          ),
          ...[
            TextButton(
                onPressed: () {},
                child: const Text(
                  "CLOTHING",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "BarlowCondensed",
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "ACCESSORIES",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "BarlowCondensed",
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "CARE AND MAINTENANCE",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "BarlowCondensed",
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "FOOTWEAR",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "BarlowCondensed",
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "STYLE AND FASHION TIPS",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "BarlowCondensed",
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )),
          ].sublist(0, numberOfVisibleViews),
          Visibility(
            visible:
                numberOfVisibleViews < viewsCounts && numberOfVisibleViews > 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: 120,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  enableFeedback: false,
                  itemHeight: 60,
                  elevation: 0,
                  isExpanded: true,
                  iconDisabledColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  isDense: true,
                  style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontFamily: "BarlowCondensed"),
                  hint: const Text(
                    "More",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontFamily: "BarlowCondensed"),
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "CLOTHING",
                      child: Text("CLOTHING"),
                    ),
                    DropdownMenuItem<String>(
                      value: "ACCESSORIES",
                      child: Text("ACCESSORIES"),
                    ),
                    DropdownMenuItem<String>(
                      value: "CARE AND MAINTENANCE",
                      child: Text("CARE AND MAINTENANCE"),
                    ),
                    DropdownMenuItem<String>(
                      value: "FOOTWEAR",
                      child: Text("FOOTWEAR"),
                    ),
                    DropdownMenuItem<String>(
                      value: "STYLE AND FASHION TIPS",
                      child: Text("STYLE AND FASHION TIPS"),
                    )
                  ].sublist(numberOfVisibleViews, viewsCounts),
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Visibility(
            visible: searcht2,
            child: Container(
              height: 44,
              width: MediaQuery.of(context).size.width * 0.05,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                color: Color(0xFFEDEDF0),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  suffixIcon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        print('clear field');
                      },
                      child: IconButton(
                        icon: Icon(Icons.close, size: 17),
                        onPressed: () {
                          setState(() {
                            searcht = !searcht;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            child: IconButton(
                onPressed: () {
                  print("dd");
                  setState(() {
                    searcht = !searcht;
                  });
                },
                icon: Icon(Icons.search)),
            visible: searcht,
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/cart.png",
                height: 40,
                width: 40,
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "SIGN IN",
                style: TextStyle(
                  fontFamily: "BarlowCondensed",
                  color: Colors.black,
                ),
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
