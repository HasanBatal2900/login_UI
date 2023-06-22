import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> shiftAnimation;

  late AnimationController fadecontroller;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    fadecontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    shiftAnimation =
        CurvedAnimation(parent: controller, curve: Curves.easeOutSine);
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(fadecontroller);

    controller.forward();
    fadecontroller.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFDF6B2E),
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, top: shiftAnimation.value * 140),
                  child: Column(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Flexible(
                  child: FadeTransition(
                    opacity: fadeAnimation,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      height: 800,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Material(
                            elevation: 5,
                            color: Colors.transparent,
                            shadowColor: Colors.orange,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0)),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Email or Phone number",
                                  hintStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w300)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Colors.orange,
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w300)),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 55,
                            ),
                            height: 50,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.orange,
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Contiune with social media",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w300,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.blue,
                                    ),
                                    child: const Text(
                                      "FaceBook",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.black,
                                    ),
                                    child: const Text(
                                      "GitHub",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
