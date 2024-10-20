import 'package:flutter/material.dart';
import '../utils/animation_utils.dart';
import '../utils/painter_utils.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20),
      ////// ***** Custom ShowUp Animation ***** ////////
      child: ShowUpAnimation(
        delay: 1000,
        //// **** Using Material Widget for Smooth Rendering and prevent no Material Widget found Error ****///////
        child: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ////// ***** Login Text ***** ////////
              const Text("Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              const SizedBox(
                height: 30,
              ),
              ////// ***** Email Field ***** ////////
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Theme.of(context).primaryColorDark.withOpacity(0.2),
                          blurRadius: 5,
                          offset: const Offset(-10, -10)),
                    ]),
                height: 45,
                child: CustomPaint(
                  painter: MyPainter(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: "Email",
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ////// ***** Password Field ***** ////////
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).primaryColor.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(10, 10)),
                    ]),
                height: 45,
                child: CustomPaint(
                  painter: MyPainter(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: "Password",
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ////// ***** Submit Button ***** ////////
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColorDark,
                          ])),
                  alignment: Alignment.center,
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
