import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/pages/widgets/mediocirculo.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key, required this.size});
  final Size size;
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int num = 0, num1 = 1;
  List<String> images = [
    'assets/images/cosmetic.png',
    'assets/images/kitty.png',
    'assets/images/writter.png',
    'assets/images/jeans.png',
    'assets/images/brush.png',
  ];

  List<Color> colors = [
    Colors.red,
    Colors.grey,
    Colors.white,
    Colors.orange,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: colors[num].withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        height: widget.size.height,
        child: Row(
          children: [
            Container(
              color: Colors.transparent,
              child: MyArc(
                diameter: widget.size.width * 0.25,
                /*decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    // borderRadius: BorderRadius.circular(200),
                  ),*/
                childd: // ClipRRect(
                    /* borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),*/
                    //child:
                    Image.asset(
                  color: Colors.transparent,
                  'assets/images/skit.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              // ),
            ),
            SizedBox(
              width: widget.size.width * 0.01,
            ),
            Container(
              width: widget.size.width * 0.30,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ontop',
                    style: TextStyle(
                      fontSize: 90,
                      letterSpacing: 4,
                      fontFamily: "Atmosphere",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '¡Descubre el estilo que te llevará a la cima en Ontop!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Con una amplia selección de prendas únicas y vanguardistas, encontrarás todo lo necesario para destacar en cualquier ocasión. Nuestro equipo de expertos en moda está siempre a la vanguardia de las tendencias, ofreciéndote diseños innovadores y materiales de alta calidad. En Ontop, no solo nos preocupamos por tu estilo, sino también por tu comodidad. Ven y déjate llevar por la experiencia Ontop, donde estar en la cima de la moda nunca ha sido tan accesible y emocionante.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Container(
                        width: widget.size.width * 0.15,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(
                                widget.size.width * 0.15)),
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_checkout,
                                color: Colors.white,
                              ),
                              Text("shop please")
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: widget.size.width * 0.01,
            ),
            Container(
              color: Colors.transparent,
              width: widget.size.width * 0.31,
              child: Image.asset(
                color: Colors.transparent,
                images[num],
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.transparent,
              height: widget.size.height,
              width: widget.size.width * 0.05,
              child: GestureDetector(
                onTap: () {
                  if (num1 == images.length - 1) {
                    num1 = 0;
                    num = images.length - 1;
                  } else if (num == images.length - 1) {
                    num = 0;
                    num1 = 1;
                  } else {
                    num++;
                    num1++;
                  }

                  print(num);

                  setState(() {});
                },
                child: Image.asset(
                  color: Colors.transparent,
                  images[num1],
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
