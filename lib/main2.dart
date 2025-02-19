import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_product_web_page/constant/dummy.dart';
import 'package:responsive_product_web_page/pages/widgets/desktop_appbar.dart';
import 'package:responsive_product_web_page/pages/widgets/mobile_appbar.dart';
import 'package:responsive_product_web_page/ui_helper.dart';
import 'package:responsive_product_web_page/view/component/category_row.dart';
import 'package:responsive_product_web_page/pages/widgets/header_widget.dart';
import 'package:responsive_product_web_page/view/component/related_keyword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.transparent,
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  int selectedIndex = 0;
  int selectedSideBarCategory = -1;
  String selectedSubcategory = '';
  bool isExtraFeatures = false;
  bool _isDrawerOpened = false;
  ScrollController deslis = ScrollController();

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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // HeaderWidget(size: size),
                    Visibility(
                        visible: screenType == ScreenType.desktop,
                        replacement: MobileAppBar(
                            onPressed:
                                _isDrawerOpened ? _closeDrawer : _openDrawer,
                            isDrawerOpened: _isDrawerOpened),
                        child: const DesktopAppBar()),
                    Center(child: categoryWidget(size, categoryList, deslis)),
                    const SizedBox(
                      height: 3,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.002),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: 
                              ),*/
                            //filterSidebarWidget(sideBarCategoryList),
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RelatedKeyword(
                                        size: size,
                                        relatedKeyword: relatedKeyword),
                                    productCard(
                                        (MediaQuery.of(context).size.width /
                                                315)
                                            .toInt()),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded productCard(int div) {
    return Expanded(
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: div, mainAxisExtent: 315),
        itemBuilder: (context, index) {
          return Container(
            height: 110,
            width: 50,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(productList[index]['image']),
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Text(
                  productList[index]['title'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  productList[index]['price'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 35,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RatingBar.builder(
                            initialRating: productList[index]['rating'],
                            minRating: 1,
                            itemSize: 15,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 3.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text('4.5'),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            productList[index]['favorite'] =
                                !productList[index]['favorite'];
                          });
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xFF9DC2FF),
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(productList[index]['favorite']
                                ? Icons.favorite
                                : Icons.favorite_border_outlined),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Like',
                              style: TextStyle(
                                color: Color(0xFF2264D1),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Expanded filterSidebarWidget(List<Map<String, dynamic>> sideBarCategoryList) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 56,
              width: 300,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFF9DC2FF),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/svg/filter-variant.svg'),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Departments',
                            style: TextStyle(
                              color: Color(0xFF2264D1),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  sideBarCategoryList.length,
                  (index) => CategorySideBarRow(
                    title: sideBarCategoryList[index]['title'],
                    caption: sideBarCategoryList[index]['subtitle'],
                    subCategory: sideBarCategoryList[index]['sub_category'],
                    isSelected: selectedSideBarCategory == index,
                    index: index,
                    selectedIndex: selectedSideBarCategory,
                    selectedSubcategory: selectedSubcategory,
                    subCategoryOntap: (String value) {
                      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                        selectedSubcategory = value;
                        setState(() {});
                      });
                    },
                    onTap: () {
                      selectedSideBarCategory = index;
                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 600),
              curve: Curves.ease,
              child: Container(
                height: isExtraFeatures ? null : 45,
                margin: const EdgeInsets.only(right: 30),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xFFF7F7FA),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isExtraFeatures = !isExtraFeatures;
                        setState(() {});
                      },
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Extra Filters',
                            ),
                            RotatedBox(
                              quarterTurns: isExtraFeatures ? 25 : 0,
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (isExtraFeatures)
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: List.generate(
                            extraFilter.length,
                            (index) => Row(
                              children: [
                                Checkbox(
                                  value: extraFilter[index]['is_selected'],
                                  onChanged: (e) {
                                    extraFilter[index]['is_selected'] =
                                        !extraFilter[index]['is_selected'];
                                    setState(() {});
                                  },
                                ),
                                Text(extraFilter[index]['title'])
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Padding categoryWidget(Size size, List<Map<String, dynamic>> categoryList,
      ScrollController deslisar) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                deslisar.animateTo(
                  (deslisar.offset) -
                      150, // posición a la que quieres desplazarte
                  duration:
                      Duration(milliseconds: 500), // duración de la animación
                  curve: Curves
                      .easeInOut, // curva de interpolación de la animación
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 15,
              )),
          SizedBox(
            height: 50,
            width: size.width > 1100
                ? size.width - size.width * 0.10
                : size.width > 900
                    ? size.width - size.width * 0.13
                    : size.width > 670
                        ? size.width - size.width * 0.17
                        : size.width > 570
                            ? size.width - size.width * 0.19
                            : size.width > 450
                                ? size.width - size.width * 0.22
                                : size.width - size.width * 0.25,
            child: ListView.builder(
              controller: deslisar,
              itemCount: categoryList.length,
              scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectedIndex = index;
                    setState(() {});
                  },
                  child: Container(
                    width: 130,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.transparent,
                      ),
                      /* boxShadow: [
                        BoxShadow(
                          color: selectedIndex == index
                              ? Colors.red.withOpacity(0.2)
                              : Colors.transparent,
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],*/
                      color: selectedIndex == index
                          ? Color.fromARGB(255, 235, 254, 255)
                          : Colors.transparent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          categoryList[index]['icon'],
                          color:
                              selectedIndex == index ? Colors.red : Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          categoryList[index]['title'],
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          IconButton(
              onPressed: () {
                deslisar.animateTo(
                  (deslisar.offset) +
                      150, // posición a la que quieres desplazarte
                  duration:
                      Duration(milliseconds: 500), // duración de la animación
                  curve: Curves
                      .easeInOut, // curva de interpolación de la animación
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ))
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
