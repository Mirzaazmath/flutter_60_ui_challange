import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd3effb),
      body: Stack(
        children: [
          /////////// ******* BackGround Section ****** //////////
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30)),
                          gradient: LinearGradient(colors: [
                            Color(0xff48c6f9),
                            Color(0xff58e0aa),
                          ]),
                      ),
                    ),
                    Positioned(
                      left: -100,
                      top: -50,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.55,
                        width: MediaQuery.sizeOf(context).width+20,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xff1578f8),
                              Color(0xff44c5ff),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              )
            ],
          ),
          ///////// ****** Glass Effect with Login UI ****** ///////////
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi  Dev_73arner",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(),
                            const Center(
                                child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white),
                            )),
                            const Spacer(),
                            const Text(
                              "Email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.white)),
                              child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.mail,
                                    color: Color(0xff4ac8f4),
                                  ),
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.white)),
                              child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xff4ac8f4),
                                  ),
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Spacer(),
                            Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xff5bdeac),
                                  borderRadius: BorderRadius.circular(30)),
                              alignment: Alignment.center,
                              child: const Text("Log In",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  )),
                            ),
                            const Spacer(),
                            const Center(
                                child: Text(
                              "Don't have a account REGISTER",
                              style: TextStyle(color: Color(0xff1576fc)),
                            )),
                          ],
                        ),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
