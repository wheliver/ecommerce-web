import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Flutter Login Web',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}*/

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void chancesreg() {
    register = false;
    setState(() {});
  }

  void chancessin() {
    register = true;
    setState(() {});
  }

  bool register = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/backk.png'),
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.04),
                      BlendMode.modulate,
                    ))),
          ),
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 75),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Column(
                              children: [
                                Text(
                                  '${'Home'}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: (false)
                                        ? Colors.redAccent
                                        : Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                (false)
                                    ? Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 75),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Column(
                              children: [
                                Text(
                                  '${'About us'}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: (false)
                                        ? Colors.redAccent
                                        : const Color.fromRGBO(0, 0, 0, 0.867),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                (false)
                                    ? Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 75),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Column(
                              children: [
                                Text(
                                  '${'Contact us'}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: (false)
                                        ? Colors.redAccent
                                        : Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                (false)
                                    ? Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 75),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Column(
                              children: [
                                Text(
                                  '${'Help'}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: (false)
                                        ? Colors.redAccent
                                        : Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                (false)
                                    ? Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 75),
                          child: GestureDetector(
                            onTap: () => chancessin(),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                padding: !register
                                    ? EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 10)
                                    : null,
                                decoration: BoxDecoration(
                                  color: !register
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: !register
                                      ? BorderRadius.circular(15)
                                      : null,
                                  boxShadow: !register
                                      ? [
                                          BoxShadow(
                                            color: Colors.grey[300]!,
                                            spreadRadius: 10,
                                            blurRadius: 12,
                                          ),
                                        ]
                                      : null,
                                ),
                                child: register
                                    ? Column(
                                        children: [
                                          Text(
                                            '${'Sign In'}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: register
                                                  ? Colors.red
                                                  : Colors.black54,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          register
                                              ? Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 2),
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                )
                                              : SizedBox()
                                        ],
                                      )
                                    : Text(
                                        'Sign In',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            chancesreg();
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              padding: register
                                  ? EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10)
                                  : null,
                              decoration: BoxDecoration(
                                color: register
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius:
                                    register ? BorderRadius.circular(15) : null,
                                boxShadow: register
                                    ? [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 10,
                                          blurRadius: 12,
                                        ),
                                      ]
                                    : null,
                              ),
                              child: register
                                  ? Text(
                                      'Register',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        Text(
                                          '${'Register'}',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: !register
                                                ? Colors.red
                                                : Colors.black54,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        !register
                                            ? Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 2),
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // MediaQuery.of(context).size.width >= 980
              //     ? Menu()
              //     : SizedBox(), // Responsive
              Body(register: register)
            ],
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body({super.key, required this.register});

  final bool register;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: register ? TextDirection.ltr : TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: register ? Alignment.topLeft : Alignment.bottomCenter,
          children: [
            Image.asset(
              register
                  ? 'images/illustration-4.png'
                  : 'images/illustration-3.png',
              fit: BoxFit.cover,
              width: register
                  ? MediaQuery.of(context).size.width * 0.60
                  : MediaQuery.of(context).size.width * 0.40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: register
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  register
                      ? Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: SizedBox(
                            height: register ? 55 : 30,
                            child: Text(
                              'Sign In\n',
                              style: TextStyle(
                                fontSize: register ? 45 : 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                  register
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            !register
                                ? "If you have an account"
                                : "If you don't have an account",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : SizedBox(),
                  Row(
                    mainAxisAlignment: register
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    children: [
                      !register
                          ? Text(
                              "If you have an account",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            )
                          : SizedBox(),
                      Text(
                        register ? "You can" : " you can",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          print(MediaQuery.of(context).size.width);
                        },
                        child: Text(
                          !register ? "Sign In!" : "Register here!",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        // MediaQuery.of(context).size.width >= 1300 //Responsive
        //     ? Image.asset(
        //         'images/illustration-1.png',
        //         width: 300,
        //       )
        //     : SizedBox(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.001),
          child: Container(
            width: register ? 320 : 640,
            child: register ? _formLogin() : _formRegister(),
          ),
        )
      ],
    );
  }

  Widget _formRegister() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(45),
          child: Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
            width: 200,
          ),
        ),
        Row(
          children: [
            Column(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      filled: true,
                      fillColor: Colors.blueGrey[90],
                      labelStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 30),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      // counterText: 'Forgot password?',
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.blueGrey[90],
                      labelStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 30),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Username',
                      filled: true,
                      fillColor: Colors.blueGrey[90],
                      labelStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 30),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      // counterText: 'Forgot password?',
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.blueGrey[90],
                      labelStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 30),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[50]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 612,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Date of Birth',
                  filled: true,
                  suffixIcon: Icon(
                    Icons.calendar_today,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.blueGrey[90],
                  labelStyle: TextStyle(fontSize: 12),
                  contentPadding: EdgeInsets.only(left: 30),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[50]!),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[50]!),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 46, 46).withOpacity(0.4),
                spreadRadius: 10,
                blurRadius: 20,
              ),
            ],
          ),
          child: ElevatedButton(
            child: Container(
                width: double.infinity,
                height: 50,
                child: Center(child: Text("Sign In"))),
            onPressed: () => print("it's pressed"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 46, 46),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(children: [
          Expanded(
            child: Divider(
              color: Colors.grey[500],
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Or continue with"),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey[500],
              height: 50,
            ),
          ),
        ]),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _loginWithButton(image: 'images/google.png'),
            _loginWithButton(image: 'images/github.png'),
            _loginWithButton(image: 'images/apple.png', isActive: true),
            _loginWithButton(image: 'images/facebook.png'),
          ],
        ),
      ],
    );
  }

  Widget _formLogin() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(45),
          child: Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
            width: 200,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter email or Phone number',
            filled: true,
            fillColor: Colors.blueGrey[90],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            counterText: 'Forgot password?',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.blueGrey[90],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 46, 46).withOpacity(0.4),
                spreadRadius: 10,
                blurRadius: 20,
              ),
            ],
          ),
          child: ElevatedButton(
            child: Container(
                width: double.infinity,
                height: 50,
                child: Center(child: Text("Sign In"))),
            onPressed: () => print("it's pressed"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(205, 255, 46, 46),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(height: 40),
        Row(children: [
          Expanded(
            child: Divider(
              color: Colors.grey[500],
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Or continue with"),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey[500],
              height: 50,
            ),
          ),
        ]),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _loginWithButton(image: 'images/google.png'),
            _loginWithButton(image: 'images/github.png', isActive: true),
            _loginWithButton(image: 'images/facebook.png'),
          ],
        ),
      ],
    );
  }

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  spreadRadius: 10,
                  blurRadius: 30,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey[400]!),
            ),
      child: Center(
          child: Container(
        decoration: isActive
            ? BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!,
                    spreadRadius: 2,
                    blurRadius: 20,
                  )
                ],
              )
            : BoxDecoration(),
        child: Image.asset(
          '$image',
          width: 35,
        ),
      )),
    );
  }
}
